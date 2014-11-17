package xtreme.test
{
	import flash.utils.setTimeout;
	import flash.ux.utils.MathUtil;
	
	import spark.components.Panel;
	
	import xtreme.core.Root;
	import xtreme.scene.SceneHelper;
	import xtreme.scene.SceneManager;
	import xtreme.scene.entity.shapes.DynamicConnector;
	import xtreme.scene.entity.shapes.FlexComponent;
	import xtreme.ui.ProgressBar;
	import xtreme.util.Util;

	public final class StressTest
	{
		private var _panels:Array;

		public function StressTest()
		{
			_panels = new Array();
			for (var i:uint = 0; i < 200; ++i)
			{
				var panel:Panel = new Panel();
				panel.width = 180;
				panel.height = 120;
				panel.title = "Panel_" + (i + 1);
				panel.setStyle("dropShadowVisible", false);
				_panels.push(panel);
			}
		}
		
		public function clearup() : void
		{
			// 清空场景
			Root.instance.sceneManager.clearScene();
		}

		/** 测试用例1
		 * 
		 * 随机平铺 100 个 Panel
		 */
		public function testCase1() : Number
		{
			clearup();

			var root:Root = Root.instance;
			var sceneMgr:SceneManager = root.sceneManager;
			var sceneHelper:SceneHelper = root.sceneHelper;

			// 禁用
			root.xtremeComponent.enabled = false;
			var pb:ProgressBar = root.effectGenerator.showProgressBar(true, true);

			var max:Number = 100;
			var numRow:int = Util.randomInt(50, 150);
			var rowPanelNum:Array = new Array();
			var counts:Number = 0;
			var i:uint, size:uint;
			for (i = 0, size = numRow; i < size; ++i)
			{
				if (i == size - 1)
				{
					if (counts < max)
						rowPanelNum.push(max - counts);
					continue;
				}

				var rnd:Number = Util.randomInt(1, 20);
				if (counts + rnd > max)
					rnd = max - counts;
				counts += rnd;
				rowPanelNum.push(rnd);
			}

			var total:Number = 0;
			var x:Number = 0;
			var y:Number = 0;
			var index:int = 0;
			var panel:Panel;
			var entity:FlexComponent;

			var startTime:Number = (new Date()).getTime();
			for (i = 0, size = rowPanelNum.length; i < size; ++i)
			{
				var num:Number = rowPanelNum[i];
				total += num;

				for (var n:uint = 0; n < num; ++n)
				{
					panel = _panels[index++];
					entity = new FlexComponent("panel" + index, panel);
					entity.draggable = true;
					//sceneMgr.addEntity(entity);
					sceneHelper.addEntity(entity, function():void {
						root.xtremeComponent.enabled = true;
						root.effectGenerator.hideProgressBar();
					});
					entity.x = x;
					entity.y = y;

					x += 186;
				}

				x = 0;
				y += 130;
			}

			var elapsedTime:Number = (new Date()).getTime() - startTime;
			return elapsedTime;
		}

		public function testCase2() : Number
		{
			var lineColors:Array = [0xFF3F33, 0xFF8433, 0xFFB133, 0xFCDB34, 0xF9FF33,
				0xBFE43A, 0x36DB43, 0x3DA4D8, 0x3D74DA, 0x543CD9];

			clearup();

			var sceneMgr:SceneManager = Root.instance.sceneManager;

			var center:FlexComponent = new FlexComponent("center", _panels[0]);
			center.draggable = true;
			sceneMgr.addEntity(center);
			center.x = 500;
			center.y = 300;

			var x:Number, y:Number, radius:Number;
			radius = 300;
			var angle:Number = 0;
			var i:uint, size:uint;
			var panell:FlexComponent;
			for (i = 0, size = 11; i < size; ++i)
			{
				var panel:FlexComponent = new FlexComponent("panel_" + i, _panels[i + 1]);
				panel.draggable = true;
				sceneMgr.addEntity(panel);

				// 计算面板位置
				var rad:Number = angle * MathUtil.DEG_2_RAD;
				x = center.x + Math.sin(rad) * radius;
				y = center.y + Math.cos(rad) * radius;
				panel.x = x;
				panel.y = y;
				angle += 36;

				// 建立连接线
				var connector:DynamicConnector = new DynamicConnector("dc" + i);
				connector.lineThickness = 4;
				connector.lineColor = lineColors[i];
				connector.connect(center.centerAnchor, panel.centerAnchor);
				sceneMgr.addEntity(connector);
			}
			
			return 0;
		}
	}
}