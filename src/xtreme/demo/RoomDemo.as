package xtreme.demo
{
	import com.adobe.ac.mxeffects.Door;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.utils.setInterval;
	import flash.utils.setTimeout;
	import flash.ux.core.Console;
	import flash.ux.core.Logger;

	import xtreme.core.Root;
	import xtreme.isometric.TextureUtils;
	import xtreme.scene.LayerEvent;
	import xtreme.scene.SceneManager;
	import xtreme.scene.entity.Isogon;
	import xtreme.scene.entity.Particle;
	import xtreme.scene.entity.isogons.HorizontalFloor;
	import xtreme.scene.entity.isogons.IsogonBillboard;
	import xtreme.scene.entity.isogons.IsogonBox;
	import xtreme.scene.entity.isogons.IsogonSprite;
	import xtreme.scene.entity.isogons.VerticalWall;
	import xtreme.util.Util;

	public final class RoomDemo
	{

		[Embed(source="../../assets/rack1.jpg")]
		public static var TextureRack1:Class;

		[Embed(source="../../assets/rack2.jpg")]
		public static var TextureRack2:Class;

		[Embed(source="../../assets/rack_side.jpg")]
		public static var TextureRackSide:Class;

		[Embed(source="../../assets/rack_top.jpg")]
		public static var TextureRackTop:Class;

		[Embed(source="../../assets/wall1.png")]
		public static var TextureWall1:Class;

		[Embed(source="../../assets/wall2.png")]
		public static var TextureWall2:Class;

		[Embed(source="../../assets/fire_extinguisher_cabinet.png")]
		public static var FireExtinguisherCabinet:Class;

		[Embed(source="../../assets/floor_air_conditioner.png")]
		public static var FloorAirConditioner:Class;

		[Embed(source="../../assets/door.png")]
		public static var Door:Class;

		[Embed(source="../../assets/doorin.png")]
		public static var DoorIn:Class;

		[Embed(source="../../assets/window.jpg")]
		public static var Window:Class;

		[Embed(source="../../assets/slogan_1.jpg")]
		public static var Slogan1:Class;

		[Embed(source="../../assets/slogan_2.jpg")]
		public static var Slogan2:Class;

		[Embed(source="../../assets/WINDOW_96.png")]
		public static var Window1:Class;

		[Embed(source="../../assets/door_256.png")]
		public static var Door256:Class;

		private var _currentObject:int;

		private var _currentIsogon:Isogon;

		private var _tileSize:Number = 48;

		private const tileNumber:Number = 15;

		private const rackWidth:Number = 40;

		private const unit:Number = rackWidth * 4.445 / 48.26;

		private var _racks:Array;

		private const scheme:int = 0;

		public function RoomDemo()
		{
			_currentObject = 0;
			_currentIsogon = null;
			_racks = new Array ();

			var console:Console = Console.instance;

			if (console)
			{
				console.registerCommand ("pillar", function(arg:String = null):void
				{
					if (_currentObject != 1)
					{
						startPlacePillar ();
					}
					else
					{
						stopPlacePillar ();
					}
					console.commandOutput ("移动鼠标到指定地板上，点击左键放下柱子。");
				}, "放置柱子");

				console.registerCommand ("fire", function(arg:String = null):void
				{
					startFireDemo ();
					console.commandOutput ("火灾演示。");
				}, "放置柱子");
			}

//			Root.instance.layerManager.addEventListener(LayerEvent.MOUSE_OVER_ISOGON, onMouseOverIsogon);
//			Root.instance.layerManager.addEventListener(LayerEvent.MOUSE_OUT_ISOGON, onMouseOutIsogon);
			Root.instance.layerManager.addEventListener (LayerEvent.MOUSE_OVER_ENTITY, onMouseOverEntity);
			Root.instance.layerManager.addEventListener (LayerEvent.MOUSE_OUT_ENTITY, onMouseOutEntity);
			Root.instance.layerManager.addEventListener (LayerEvent.LAYER_DOUBLE_CLICK, onLayerDoubleClick);
			//		Root.instance.layerManager.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
		}

		public function main():void
		{
			placeFloor ();
			placeWall ();

			placeRack (100, 200);

			//	placeOther();

//			setTimeout(function():void {
//				var iso:Isogon = _racks[0];
//				iso.context.transform.colorTransform = new ColorTransform(1, 1, 1, 1, 50, -50, -50, 0);
//				Root.instance.sceneManager.removeEntity(Root.instance.sceneManager.getEntity("fec_1"));
//				Root.instance.sceneManager.removeEntity(Root.instance.sceneManager.getEntity("fec_2"));
//				Root.instance.sceneManager.removeEntity(Root.instance.sceneManager.getEntity("fec_3"));
//			}, 3000);
		}

		public function startPlacePillar():void
		{
			_currentObject = 1;
		}

		public function stopPlacePillar():void
		{
			_currentObject = 0;
		}

		protected function placePillar(x:Number, z:Number):void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			// 移除地板
			var tile:Isogon = sceneMgr.getEntity ("floor_" + x + "_" + z) as Isogon;

			if (tile)
			{
				sceneMgr.removeEntity (tile);
			}

			// 添加柱子
			var pillar:IsogonBox;
			pillar = new IsogonBox ("pillar_" + x + "_" + z, _tileSize, 100);
			pillar.setPosition (x, 0, z);
			pillar.alpha = 0.8;
			sceneMgr.addEntity (pillar);
		}

		var gridSize:Number = 25 * Math.sqrt (5 / 4);

		protected function placeRack(x:Number, z:Number):void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var w:Number = 10 * Math.sqrt (5 / 4);
			var h:Number = 80 * Math.sqrt (5 / 4);
			var nw:Number = w / Math.sqrt (5 / 4);
			var nh:Number = h / Math.sqrt (5 / 4);
			// 添加
			var pillar:IsogonBillboard;
			pillar = new IsogonBillboard ("pillar_1", gridSize);

			pillar.alpha = 0.8;
			sceneMgr.addEntity (pillar);
			var texture:Sprite = TextureUtils.makeBoxTexture (w, 201, h, new TextureRack1 (), new TextureRackSide (), new TextureRackTop ());
			pillar.texture = texture;
			var offset:Point = TextureUtils.calcBoxTextureOffsetForBillboard (w, h);
			pillar.texXOffset = offset.x;
			pillar.texYOffset = offset.y;
			pillar.texXOffset = offset.x + (w >= h ? 1 : -1) * (Math.max (nw, nh) - Math.max (nw, nh) * Math.min (w, h) / Math.max (w, h))
			pillar.texYOffset = offset.y - (gridSize - Math.max (nw, nh) + Math.max (nw, nh) * 0.5 * (Math.max (w, h) - Math.min (w, h)) / Math.max (w, h)) //-h / Math.sqrt (5 / 4) * 2;
			pillar.setPosition (100, 0, 100);

			pillar = new IsogonBillboard ("pillar_2" + x + "_" + z, gridSize);

			pillar.alpha = 0.8;
			sceneMgr.addEntity (pillar);
			var texture:Sprite = TextureUtils.makeBoxTexture (w, 201, h, new TextureRack1 (), new TextureRackSide (), new TextureRackTop ());
			pillar.texture = texture;
			var offset:Point = TextureUtils.calcBoxTextureOffsetForBillboard (w, h);
			pillar.texXOffset = offset.x;
			pillar.texYOffset = offset.y;
			pillar.texXOffset = offset.x + (w >= h ? 1 : -1) * (Math.max (nw, nh) - Math.max (nw, nh) * Math.min (w, h) / Math.max (w, h)) - Math.max (nw, nh) * h / Math.max (w, h)
			pillar.texYOffset = offset.y - (gridSize - Math.max (nw, nh) + Math.max (nw, nh) * 0.5 * (Math.max (w, h) - Math.min (w, h)) / Math.max (w, h)) + Math.max (nw, nh) * 0.5 * h / Math.max (w, h) //-h / Math.sqrt (5 / 4) * 2;
			pillar.setPosition (100, 0, 100);

			pillar = new IsogonBillboard ("pillar_3" + x + "_" + z, gridSize);

			pillar.alpha = 0.8;
			sceneMgr.addEntity (pillar);
			var texture:Sprite = TextureUtils.makeBoxTexture (w, 201, h, new TextureRack1 (), new TextureRackSide (), new TextureRackTop ());
			pillar.texture = texture;
			var offset:Point = TextureUtils.calcBoxTextureOffsetForBillboard (w, h);
			pillar.texXOffset = offset.x;
			pillar.texYOffset = offset.y;
			pillar.texXOffset = offset.x + (w >= h ? 1 : -1) * (Math.max (nw, nh) - Math.max (nw, nh) * Math.min (w, h) / Math.max (w, h))- Math.max (nw, nh) * h / Math.max (w, h)*2
			pillar.texYOffset = offset.y - (gridSize - Math.max (nw, nh) + Math.max (nw, nh) * 0.5 * (Math.max (w, h) - Math.min (w, h)) / Math.max (w, h)) + Math.max (nw, nh) * 0.5 * h / Math.max (w, h)*2
			pillar.setPosition (100, 0, 100 );

			var door:IsogonBillboard = new IsogonBillboard ("door", gridSize);

			var texture1:DisplayObject = (new DoorIn ()) as Bitmap;
//			door.texture = texture;
//			var offset:Point = TextureUtils.calcBoxTextureOffsetForBillboard (w, h);
//			door.texXOffset = offset.x;
//			door.texYOffset = offset.y;

			door.texture = texture1;
			door.setTextureFace (IsogonBillboard.TEXFACE_SIDE, true);
			sceneMgr.addEntity (door);
			door.texXOffset = w >= h ? Math.max (nw, nh) : Math.min (nw, nh);
			door.texYOffset = Math.max (nw, nh) * 0.5 * w / Math.max (w, h);
//			var index = 0, index1 = 0;
//			setInterval (function():void
//			{
//				index++;
			door.setPosition (100, 0, 100);

//				if (index1 * 3 >= 150)
//				{
//					index1--;
//				}else{
//					index1++;
//				}
//				door.hang = 0 + index1 * 3;
//			}, 500);

		}



		protected function placeFloor(whole:Boolean = true):void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var tile:Isogon;
			var x:Number, z:Number;

			//			setTimeout(function():void {
			//				Root.instance.layerManager.locate("floor_a");
			//			}, 3000);

			if (whole)
			{
				var f:HorizontalFloor = new HorizontalFloor ("floor_a", gridSize, tileNumber, tileNumber);
				f.setPosition (0, 0, 0);

				var color1:uint;
				var color2:uint;

				if (scheme == 0)
				{
					color1 = 0xBDBCC2;
					color2 = 0xB3B2B8;
				}
				else
				{
					//					color1 = 0xAAB7A4;
					//					color2 = 0xC1B7A3;
				}

				var tex1:Bitmap, tex2:Bitmap;
				var tex1Data:BitmapData, tex2Data:BitmapData;

				tex1Data = new BitmapData (32, 32, false, color1);
				tex1 = new Bitmap (tex1Data);
				tex2Data = new BitmapData (32, 32, false, color2);
				tex2 = new Bitmap (tex2Data);

				f.setTileTexture (tex1, tex2);

				sceneMgr.addEntity (f);
			}
			else
			{
				for (var i:int = 0; i < 20; i++)
				{
					for (var j:int = 0; j < 20; j++)
					{
						x = i * _tileSize;
						z = j * _tileSize;
						tile = new Isogon ("floor_" + x + "_" + z, _tileSize);
						tile.setPosition (x, 0, z);
						tile.showPlaceholder ();
						sceneMgr.addEntity (tile);
					}
				}
			}
		}


		protected function placeDemoRack():void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var rack:IsogonBox;

			var height:Number = unit * 42;
			var gap:int = 0; //(_tileSize - rackWidth);
			var rand:Number = Util.randomInt (0, 9);

			var x:Number, z:Number;
			var i:int, size:int;

			for (i = 0, size = 6; i < size; ++i)
			{
				x = (i + 2) * _tileSize + (i * gap);
				z = 2 * _tileSize;
				rack = new IsogonBox ("rack_" + x + "_" + z, rackWidth, height);
				rack.setPosition (x, 0, z);
				rack.alpha = 1.0;

				rand = Util.randomInt (0, 9);

				if (rand % 3 != 0)
				{
					rack.addFrontTexture (new TextureRack1 () as Bitmap);
				}
				else
				{
					rack.addFrontTexture (new TextureRack2 () as Bitmap);
				}
				rack.addSideTexture (new TextureRackSide () as Bitmap);
				rack.addTopTexture (new TextureRackTop () as Bitmap);
				sceneMgr.addEntity (rack);

				_racks.push (rack);
			}

			for (i = 0, size = 6; i < size; ++i)
			{
				x = (i + 2) * _tileSize + (i * gap);
				z = 5 * _tileSize;
				rack = new IsogonBox ("rack_" + x + "_" + z, rackWidth, height);
				rack.setPosition (x, 0, z);
				rack.alpha = 1.0;

				rand = Util.randomInt (0, 9);

				if (rand % 3 != 0)
				{
					rack.addFrontTexture (new TextureRack1 () as Bitmap);
				}
				else
				{
					rack.addFrontTexture (new TextureRack2 () as Bitmap);
				}
				rack.addSideTexture (new TextureRackSide () as Bitmap);
				rack.addTopTexture (new TextureRackTop () as Bitmap);
				sceneMgr.addEntity (rack);

				_racks.push (rack);
			}

			for (i = 0, size = 6; i < size; ++i)
			{
				x = (i + 2) * _tileSize + (i * gap);
				z = 8 * _tileSize;
				rack = new IsogonBox ("rack_" + x + "_" + z, rackWidth, height);
				rack.setPosition (x, 0, z);
				rack.alpha = 1.0;

//				rand = Util.randomInt(0, 9);
//				if (rand % 3 != 0)
//					rack.addFrontTexture(new TextureRack1() as Bitmap);
//				else
//					rack.addFrontTexture(new TextureRack2() as Bitmap);
//				rack.addSideTexture(new TextureRackSide() as Bitmap);
//				rack.addTopTexture(new TextureRackTop() as Bitmap);
				sceneMgr.addEntity (rack);

				_racks.push (rack);
			}
//			for (i = 0, size = 10; i < size; ++i)
//			{
//				x = (i + 2) * rackWidth + (i * gap);
//				z = 11 * _tileSize;
//				rack = new IsogonBox("rack_" + x + "_" + z, rackWidth, height);
//				rack.setPosition(x, 0, z);
//				rack.alpha = 1.0;
//				
//				rand = Util.randomInt(0, 9);
//				if (rand % 3 != 0)
//					rack.addFrontTexture(new TextureRack1() as Bitmap);
//				else
//					rack.addFrontTexture(new TextureRack2() as Bitmap);
//				rack.addSideTexture(new TextureRackSide() as Bitmap);
//				rack.addTopTexture(new TextureRackTop() as Bitmap);
//				sceneMgr.addEntity(rack);
//				
//				_racks.push(rack);
//			}
//			for (i = 0, size = 10; i < size; ++i)
//			{
//				x = (i + 2) * rackWidth + (i * gap);
//				z = 14 * _tileSize;
//				rack = new IsogonBox("rack_" + x + "_" + z, rackWidth, height);
//				rack.setPosition(x, 0, z);
//				rack.alpha = 1.0;
//				
//				rand = Util.randomInt(0, 9);
//				if (rand % 3 != 0)
//					rack.addFrontTexture(new TextureRack1() as Bitmap);
//				else
//					rack.addFrontTexture(new TextureRack2() as Bitmap);
//				rack.addSideTexture(new TextureRackSide() as Bitmap);
//				rack.addTopTexture(new TextureRackTop() as Bitmap);
//				sceneMgr.addEntity(rack);
//				
//				_racks.push(rack);
//			}
		}



		protected function placeWall():void
		{
			var height:Number = _tileSize * 4; //unit * 42;

			var sceneMgr:SceneManager = Root.instance.sceneManager;

			var wall1:VerticalWall = new VerticalWall ("wall1", gridSize, VerticalWall.PARALLEL_Z, tileNumber, height);
			wall1.setPosition (-gridSize, 0, 0);
//			if (scheme == 0)
//				wall1.texture = (new TextureWall1() as Bitmap);
//			else
//				wall1.texture = (new TextureWall2() as Bitmap);

			var wall2:VerticalWall = new VerticalWall ("wall2", gridSize, VerticalWall.PARALLEL_X, tileNumber, height);
			wall2.setPosition (0, 0, -gridSize);

//			wall2.showPlaceholder( _tileSize*6);
//			if (scheme == 0)
//			{
//				wall2.texture = (new TextureWall1 () as Bitmap);
//			}
//			else
//			{
//				wall2.texture = (new TextureWall2 () as Bitmap);
//			}

			sceneMgr.addEntity (wall1);
			sceneMgr.addEntity (wall2);
		}

		protected function placeOther():void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;

			// 灭火器

			var fec1:IsogonSprite = new IsogonSprite ("fec_1", _tileSize);
			fec1.setPosition (8 * _tileSize, 0, 2 * _tileSize);
			fec1.content = (new FireExtinguisherCabinet ()) as Bitmap;
			sceneMgr.addEntity (fec1);

			var fec2:IsogonSprite = new IsogonSprite ("fec_2", _tileSize);
			fec2.setPosition (8 * _tileSize, 0, 5 * _tileSize);
			fec2.content = (new FireExtinguisherCabinet ()) as Bitmap;
			sceneMgr.addEntity (fec2);

			var fec3:IsogonSprite = new IsogonSprite ("fec_3", _tileSize);
			fec3.setPosition (8 * _tileSize, 0, 8 * _tileSize);
			fec3.content = (new FireExtinguisherCabinet ()) as Bitmap;
			sceneMgr.addEntity (fec3);

			// 立式空调机

			var fac1:IsogonBillboard = new IsogonBillboard ("fac_1", _tileSize);
			fac1.setPosition (0, 0, 10 * _tileSize);
			fac1.texture = (new FloorAirConditioner ()) as Bitmap;
			fac1.texXOffset = -11;
			fac1.texYOffset = 10;
			sceneMgr.addEntity (fac1);

			var fac2:IsogonBillboard = new IsogonBillboard ("fac_2", _tileSize);
			fac2.setPosition (0, 0, 1 * _tileSize);
			fac2.texture = (new FloorAirConditioner ()) as Bitmap;
			fac2.texXOffset = -11;
			fac2.texYOffset = 10;
			sceneMgr.addEntity (fac2);

			// 门

			var door:IsogonBillboard = new IsogonBillboard ("door", _tileSize);
			door.setPosition (9 * _tileSize, 0, 0);
			door.texture = (new Door ()) as Bitmap;
			door.lockSize = 66;
			door.setTextureFace (IsogonBillboard.TEXFACE_FRONT, true);
			sceneMgr.addEntity (door);

			var door2:IsogonBillboard = new IsogonBillboard ("door2", _tileSize);
			door2.setPosition (-_tileSize, 0, 2 * _tileSize);
			door2.texture = (new Door256 ()) as Bitmap;
			door2.lockSize = 66;
			//	door2.alpha = 0.5;
			door2.setTextureFace (IsogonBillboard.TEXFACE_SIDE, false);
			sceneMgr.addEntity (door2);

			// 窗

			var window:IsogonBillboard = new IsogonBillboard ("window", _tileSize);
			window.setPosition (0, 0, 4 * _tileSize);
			window.texture = (new Window1 ()) as Bitmap;
			window.setTextureFace (IsogonBillboard.TEXFACE_SIDE, true);
			window.hang = 42;
			sceneMgr.addEntity (window);

			// 标语

			var slogan1:IsogonBillboard = new IsogonBillboard ("slogan_1", _tileSize);
			slogan1.setPosition (1 * _tileSize, 0, 0);
			slogan1.texture = (new Slogan1 ()) as Bitmap;
			slogan1.setTextureFace (IsogonBillboard.TEXFACE_FRONT, true);
			slogan1.hang = 30;
			sceneMgr.addEntity (slogan1);

			var slogan2:IsogonBillboard = new IsogonBillboard ("slogan_2", _tileSize);
			slogan2.setPosition (5 * _tileSize, 0, 0);
			slogan2.texture = (new Slogan2 ()) as Bitmap;
			slogan2.setTextureFace (IsogonBillboard.TEXFACE_FRONT, true);
			slogan2.hang = 30;
			sceneMgr.addEntity (slogan2);
		}

		protected function startFireDemo():void
		{
			var fire:Particle = Root.instance.effectGenerator.createFireAndSmokeParticle (150, 380, 300, 400);
			fire.x = -150;
			fire.y = -542;
			var rack:IsogonBox = _racks[Util.randomInt (0, _racks.length - 1)];
			rack.addChild (fire);
			fire.start ();
		}

		protected function stopFireDemo():void
		{

		}

		private function onMouseOverIsogon(event:LayerEvent):void
		{
			if (false == (event.isogon is IsogonBox))
			{
				return;
			}

			if (event.isogon.name.indexOf ("slogan") == 0)
			{
				return;
			}

			var i:int, size:int;
			var ret:Array = Root.instance.layerManager.detectIsogonBoxAndBillboardCollision (event.isogon);

			if (ret)
			{
				var isobox:IsogonBox;

				for (i = 0, size = ret.length; i < size; ++i)
				{
					isobox = ret[i];
					isobox.alpha = 0.1;
				}
			}
			event.isogon.highlight = true;
			_currentIsogon = event.isogon;
		}

		private function onMouseOutIsogon(event:LayerEvent):void
		{
			if (false == (event.isogon is IsogonBox))
			{
				return;
			}

			var i:int, size:int;
			var ret:Array = Root.instance.layerManager.detectIsogonBoxAndBillboardCollision (event.isogon);

			if (ret)
			{
				var isobox:IsogonBox;

				for (i = 0, size = ret.length; i < size; ++i)
				{
					isobox = ret[i];
					isobox.alpha = 1.0;
				}
			}
			event.isogon.highlight = false;
			_currentIsogon = null;
		}

		private function onMouseOverEntity(event:LayerEvent):void
		{
			if (false == (event.isogon is IsogonBox))
			{
				return;
			}

			if (event.isogon.name.indexOf ("rack") < 0)
			{
				return;
			}

			var i:int, size:int;
			var ret:Array = Root.instance.layerManager.detectIsogonBoxAndBillboardCollision (event.isogon);

			if (ret)
			{
				var isobox:IsogonBox;

				for (i = 0, size = ret.length; i < size; ++i)
				{
					isobox = ret[i];
					isobox.alpha = 0.1;
				}
			}
			event.isogon.highlight = true;
			_currentIsogon = event.isogon;
		}

		private function onMouseOutEntity(event:LayerEvent):void
		{
			if (false == (event.isogon is IsogonBox))
			{
				return;
			}

			if (event.isogon.name.indexOf ("rack") < 0)
			{
				return;
			}

			var i:int, size:int;
			var ret:Array = Root.instance.layerManager.detectIsogonBoxAndBillboardCollision (event.isogon);

			if (ret)
			{
				var isobox:IsogonBox;

				for (i = 0, size = ret.length; i < size; ++i)
				{
					isobox = ret[i];
					isobox.alpha = 1.0;
				}
			}
			event.isogon.highlight = false;
			_currentIsogon = null;
		}

		private function onLayerDoubleClick(event:LayerEvent):void
		{
			if (_currentIsogon != null)
			{
				Logger.info (this, "onLayerDoubleClick", "双击机架 " + _currentIsogon.name);
			}
			else
			{
				Logger.info (this, "onLayerDoubleClick", "没有双击任何机架");
			}
		}

		private function onMouseDown(event:MouseEvent):void
		{
			switch (_currentObject)
			{
				case 1:
					if (_currentIsogon)
					{
						placePillar (_currentIsogon.position.x, _currentIsogon.position.z);
						_currentObject = 0;
					}
					break;
				default:
					break;
			}
		}
	}
}