package xtreme.test
{

	import flash.display.Bitmap;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import spark.components.Panel;
	
	import xtreme.core.Root;
	import xtreme.scene.SceneManager;
	import xtreme.scene.entity.Isogon;
	import xtreme.scene.entity.Primitive;
	import xtreme.scene.entity.Shape;
	import xtreme.scene.entity.shapes.*;
	import xtreme.scene.tool.Group;
	import xtreme.util.Size;
	import xtreme.util.Util;

	/**
	 * 测试类。
	 */
	public final class Test
	{
		//[Embed(source="../../assets/iso_texture.jpg")] public static var TextureImage:Class;
		
		[Embed(source="../../assets/star-green.png")]
		private static var SpriteSheet:Class;

		public function Test()
		{
		}

		public static function testOneShape() : void
		{
			var root:Root = Root.instance;

			var rect1:Rect = new Rect("rect1", new Rectangle(100, 80, 100, 80));
			rect1.draggable = true;
			root.sceneManager.addEntity(rect1);
		}

		public static function testMassShapes() : void
		{
			var root:Root = Root.instance;

			var aw:Number = 4000;
			var ah:Number = 3000;
			var num:Number = 100;

			var i:uint, size:uint;
			for (i = 0, size = num; i < size; ++i)
			{
				var x:Number = Util.randomNumber(0, aw);
				var y:Number = Util.randomNumber(0, ah);
				var w:Number = Util.randomNumber(100, 300);
				var h:Number = Util.randomNumber(50, 150);

				var rect:Rect = new Rect("rect" + i, new Rectangle(x, y, w, h));
				rect.draggable = true;
				root.sceneManager.addEntity(rect);
			}
		}

//		public static function testBaseShape() : void
//		{
//			var root:Root = Root.instance;
//
//			var line01:Line = new Line("line01", new Point(10,10), new Point(210, 10));
//			root.sceneManager.addEntity(line01);
//
//			var line02:Line = new Line("line02", new Point(10,30), new Point(210, 30),
//				1, LineStyle.DASHED);
//			root.sceneManager.addEntity(line02);
//
//			var line03:Line = new Line("line03", new Point(10,50), new Point(210, 50),
//				1, LineStyle.SOLID, true);
//			root.sceneManager.addEntity(line03);
//
//			var line04:Line = new Line("line04", new Point(10,70), new Point(210, 70),
//				1, LineStyle.DASHED, true);
//			root.sceneManager.addEntity(line04);
//
//			var line05:Line = new Line("line05", new Point(10,90), new Point(210, 90),
//				1, Line.STYLE_SOLID, false, true);
//			root.sceneManager.addEntity(line05);
//
//			var line06:Line = new Line("line06", new Point(10,110), new Point(210, 110),
//				1, LineStyle.DASHED, false, true);
//			root.sceneManager.addEntity(line06);
//
//			var line07:Line = new Line("line07", new Point(10,130), new Point(210, 130),
//				2, Line.STYLE_SOLID, true, true);
//			line07.lineColor = 0xFF0000;
//			root.sceneManager.addEntity(line07);
//
//			var line08:Line = new Line("line08", new Point(10,150), new Point(210, 150),
//				2, LineStyle.DASHED, true, true);
//			line08.lineColor = 0xFF0000;
//			root.sceneManager.addEntity(line08);
//
//			var line09:Line = new Line("line09", new Point(10,170), new Point(210, 200),
//				4);
//			line09.lineColor = 0x4C1B1B;
//			line09.draggable = true;
//			root.sceneManager.addEntity(line09);
//
//			var line10:Line = new Line("line10", new Point(210,170), new Point(10, 200),
//				4);
//			line10.lineColor = 0x4C1B1B;
//			line10.draggable = true;
//			root.sceneManager.addEntity(line10);
//
//			var rect01:Rect = new Rect("rect01", new Rectangle(250, 10, 100, 50));
//			rect01.draggable = true;
//			root.sceneManager.addEntity(rect01);
//
//			var rect02:Rect = new Rect("rect02", new Rectangle(250 + 120, 10, 100, 50));
//			rect02.lineColor = 0xA7A37E;
//			rect02.fillColor = 0x046380;
//			rect02.draggable = true;
//			root.sceneManager.addEntity(rect02);
//
//			var rect03:Rect = new Rect("rect03", new Rectangle(250, 10 + 70, 100, 50));
//			rect03.lineThickness = 0;
//			rect03.fillColor = 0xE6E2AF;
//			rect03.draggable = true;
//			root.sceneManager.addEntity(rect03);
//
//			var rect04:Rect = new Rect("rect04", new Rectangle(250 + 120, 10 + 70, 100, 50));
//			rect04.setGradient(Shape.GT_LINEAR, [0x85DB18,0xF5F6D4], [100,100], [0,255], 90);
//			rect04.draggable = true;
//			root.sceneManager.addEntity(rect04);
//
//			var rrect01:RoundedRect = new RoundedRect("rrect01", new Rectangle(250, 10 + 140, 100, 50), 20);
//			rrect01.draggable = true;
//			root.sceneManager.addEntity(rrect01);
//
//			var rrect02:RoundedRect = new RoundedRect("rrect02", new Rectangle(250 + 120, 10 + 140, 100, 50), 20);
//			rrect02.lineThickness = 2;
//			rrect02.lineColor = 0x493F0B;
//			rrect02.fillColor = 0xCDE855;
//			rrect02.draggable = true;
//			root.sceneManager.addEntity(rrect02);
//
//			var circle01:Circle = new Circle("circle01", new Point(510 + 30, 10 + 30), 30);
//			circle01.draggable = true;
//			root.sceneManager.addEntity(circle01);
//
//			var circle02:Circle = new Circle("circle02", new Point(510 + 80 + 30, 10 + 30), 30);
//			circle02.draggable = true;
//			circle02.lineThickness = 0;
//			circle02.fillColor = 0x493F0B;
//			root.sceneManager.addEntity(circle02);
//
//			var cc01:ConcentricCircle = new ConcentricCircle("cc01", new Point(510 + 30, 10 + 110), 30, 10);
//			cc01.draggable = true;
//			root.sceneManager.addEntity(cc01);
//
//			var cc02:ConcentricCircle = new ConcentricCircle("cc02", new Point(510 + 80 + 30, 10 + 110), 30, 20);
//			cc02.draggable = true;
//			cc02.lineThickness = 0;
//			cc02.fillColor = 0x85DB18;
//			root.sceneManager.addEntity(cc02);
//
//			var ellipse:Ellipse = new Ellipse("ellipse01", new Point(510, 120 + 20 + 20), new Size(140, 40));
//			ellipse.draggable = true;
//			ellipse.setGradient(Shape.GT_RADIAL, [0xFEE169,0xC9313D], [100,100], [0,255]);
//			root.sceneManager.addEntity(ellipse);
//
////			ellipse.zIndex = 10;
////			flash.utils.setTimeout(function():void {ellipse.zIndex = 0;}, 10000);
//
//			var group01:Group = new Group("group01");
//			group01.x = 670;
//			group01.y = 10;
//			group01.add(new Rect("g01_rect01", new Rectangle(0,0,80,40)));
//			group01.add(new RoundedRect("g01_rrect02", new Rectangle(40, 20, 60, 30), 16));
//			group01.draggable = true;
//			root.sceneManager.addEntity(group01);
//
//			var textBox1:TextBox = new TextBox("textbox01", "这是一个 TextBox");
//			textBox1.x = 671;
//			textBox1.y = 20 + 100;
//			root.sceneManager.addEntity(textBox1);
//
//			/*var arrow01:Arrow = new Arrow("arrow01", new Point(10,260), new Point(210,260));
//			root.sceneManager.addEntity(arrow01);*/
//
//			var c_rect01:Rect = new Rect("c_rect01", new Rectangle(510, 250, 200, 100));
//			c_rect01.draggable = true;
//			root.sceneManager.addEntity(c_rect01);
//
//			var c_dc01:DynamicConnector = new DynamicConnector("c_dc01", new Point(510, 370), new Point(710, 370));
//			c_dc01.lineThickness = 3;
//			c_dc01.endArrow = true;
//			c_dc01.lineStyle = LineStyle.DASHED;
//			c_dc01.draggable = true;
//			root.sceneManager.addEntity(c_dc01);
//
//			var c_dc02:DynamicConnector = new DynamicConnector("c_dc02", new Point(730, 250), new Point(730, 370));
//			c_dc02.lineColor = 0xFF0000;
//			c_dc02.lineThickness = 3;
//			c_dc02.beginningArrow = true;
//
//			root.sceneManager.addEntity(c_dc02);
//
//			var c_rect02:Rect = new Rect("c_rect02", new Rectangle(420, 240, 60, 60));
//			c_rect02.fillColor = 0x990000;
//			c_rect02.docking = true;
//			c_rect02.draggable = true;
//			root.sceneManager.addEntity(c_rect02);
//
//			Root.instance.layerManager.dockingGrid = 60;
//			Root.instance.hideStatus();
//		}

		public static function testImage(images:Array) : void
		{
			var root:Root = Root.instance;

			var counts:uint = 0;
			var i:uint;
			var gap:uint = 0;
			var bmp:Bitmap;
			var img:Image;
			for (i = 0; i < images.length; ++i)
			{
				bmp = new images[i];
				img = new Image("img" + counts, bmp.bitmapData);
				img.draggable = true;
				img.scale = 0.5;
				img.x = 10;
				img.y = 250 + gap;
				root.sceneManager.addEntity(img);
				
				if(i == 0)
					img.convertToGrayscale();

//				img.context.doubleClickEnabled = true;
//				img.addHandleEventListener(MouseEvent.DOUBLE_CLICK, function(event:MouseEvent):void {
//					trace("DOUBLE_CLICK");
//				});

				gap += img.height + 10;
				++counts;
			}

			gap = 0;
			for (i = 0; i < images.length; ++i)
			{
				bmp = new images[i];
				img = new Image("img" + counts, bmp.bitmapData);
				img.draggable = true;
				img.scale = 0.5;
				img.x = 10 + 200;
				img.y = 250 + gap;
				if (i % 2 == 0) {
					img.flipHorizontal();
				}
				else {
					img.flipVertical();
				}
				root.sceneManager.addEntity(img);

				gap += img.height + 10;
				++counts;
			}

			bmp = new images[0];
			var textImage1:TextImage = new TextImage("textimage1", bmp, "This is a car. This is a car. This is a car. This is a car.");
			textImage1.draggable = true;
			textImage1.x = 500;
			textImage1.y = 400;
			root.sceneManager.addEntity(textImage1);
			
//			setTimeout(function():void {
//				textImage1.text = "这是一辆汽车。";
//			}, 2000);
		}

////		public static function testComponent() : void
//		{
//			var root:Root = Root.instance;
//
//			var panel1:Panel = new Panel();
//			panel1.title = "Flex Component 1";
//			panel1.width = 300;
//			panel1.height = 120;
//			panel1.setStyle("cornerRadius", 10);
//			panel1.setStyle("dropShadowVisible", false);
//			var flexComp01:FlexComponent = new FlexComponent("flxcomp01", panel1);
//			flexComp01.draggable = true;
//			flexComp01.x = 600;
//			flexComp01.y = 10;
//			root.sceneManager.addEntity(flexComp01);
//
//			var panel2:Panel = new Panel();
//			panel2.title = "Flex 控件 2";
//			panel2.width = 300;
//			panel2.height = 120;
//			panel2.setStyle("dropShadowVisible", false);
//			var flexComp02:FlexComponent = new FlexComponent("flxcomp02", panel2);
//			flexComp02.draggable = true;
//			flexComp02.x = 20;
//			flexComp02.y = 500;
//			flexComp02.hideTopAnchor();
//			flexComp02.hideBottomAnchor();
//			root.sceneManager.addEntity(flexComp02);
//
////			var dc1:DynamicConnector = new DynamicConnector("flxdc1");
////			dc1.connect(flexComp01.bottomAnchor, flexComp02.topAnchor);
////			root.sceneManager.addEntity(dc1);
//		}

//		public static function testAnimator() : void
//		{
//			var sceneManager:SceneManager = Root.instance.sceneManager;
//
//			var host:Rect = new Rect("test001", new Rectangle(200, 100, 128, 128));
//			host.fillColor = 0x1AEF1A;
//			sceneManager.addEntity(host);
//
//			var ani:RippleAnimator = new RippleAnimator(RippleAnimator.SHAPE_RECT, new Size(65,65), new Size(65,65));
//			ani.x = Math.round(host.width * .5) + 0.5;
//			ani.y = Math.round(host.height * .5) + 0.5;
//			host.addAnimator("test_ani_1", ani);
//			host.animatorManager.play("test_ani_1", "default");
//
//			host.addAnimator("test_ani_2", new SpriteSheetAnimator(new SpriteSheet() as Bitmap, 25, 3, 0, 70));
////			host.animatorManager.play("test_ani_2", "default", int.MAX_VALUE);
//
//			host.addAnimator("test_ani_3", new TwitterAnimator(host, 3, 1000));
////			setTimeout(function():void {
////				host.animatorManager.play("test_ani_3");
////			}, 1000);
//
////			host.addAnimator("test_ani_4", new TranslationAnimator(host, 1000, 400, 300));
////			host.animatorManager.play("test_ani_4");
//		}

		public static function testIsometric() : void
		{
			var isogon1:Isogon = new Isogon("isogon1", 128);
			isogon1.setPosition(0, 0, 0);
			isogon1.showPlaceholder(128);

			var root:Root = Root.instance;
			root.sceneManager.addEntity(isogon1);
		}

		public static function testIsometricAxisX(offsetX:Number, offsetY:Number) : void
		{
			var root:Root = Root.instance;
			var isogon:Isogon;
			for (var i:uint = 0; i < 10; ++i)
			{
				isogon = new Isogon("isogon_x_" + i, 32);
				isogon.setPosition(i * 32, 0, 0);
				isogon.showPlaceholder();
				root.sceneManager.addEntity(isogon);
			}
		}

		public static function testIsometricAxisY(offsetX:Number, offsetY:Number) : void
		{
			var root:Root = Root.instance;
			var isogon:Isogon;
			for (var i:uint = 0; i < 10; ++i)
			{
				isogon = new Isogon("isogon_y_" + i, 32);
				isogon.setPosition(0, i * 32, 0);
				isogon.showPlaceholder();
				root.sceneManager.addEntity(isogon);
			}
		}

		public static function testIsometricAxisZ(offsetX:Number, offsetY:Number) : void
		{
			var root:Root = Root.instance;
			var isogon:Isogon;
			for (var i:uint = 0; i < 10; ++i)
			{
				isogon = new Isogon("isogon_z_" + i, 32);
				isogon.setPosition(0, 0, i * 32);
				isogon.showPlaceholder();
				root.sceneManager.addEntity(isogon);
			}
		}

		public static function testTiles() : void
		{
			//Isogon.SCREEN_SPATIAL_OFFSET = new Point(400, 100);
			var root:Root = Root.instance;

			var tile:Isogon;
			for(var i:int = 0; i < 20; i++)
			{
				for(var j:int = 0; j < 20; j++)
				{
					tile = new Isogon("isogon_tile_" + i + "_" + j, 20);
					tile.setPosition(i * 20, 0, j * 20);
					/*if (i == 0 && j == 0)
						tile.showPlaceholder(20);
					else
						tile.showPlaceholder();*/
					if (int(Util.randomNumber(1, 9)) % 4 == 0)
					{
						tile.showPlaceholder(20);
					}
					else
					{
						tile.showPlaceholder();
					}
					root.sceneManager.addEntity(tile);
				}
			}

			//var bitmap:Bitmap = (new TextureImage) as Bitmap;
			//var image:Image = new Image("iso_texture", bitmap);
			//image.x = 500;
			//image.y = 10;
			//root.sceneManager.addEntity(image);

			/*var box:IsogonBox;
			box = new IsogonBox("box1", 40, 80);
			box.setPosition(200, 0, 200);
			box.addFrontTexture((new TextureImage()) as Bitmap);
			box.addSideTexture((new TextureImage()) as Bitmap);
			box.addTopTexture((new TextureImage()) as Bitmap);
			root.sceneManager.addEntity(box);*/

			/*var image:Image = new Image("iso_texture", bitmap, new Size(20, 20 * IsoUtils.Y_CORRECT));
			image.x = 380;
			image.y = 75;
			root.sceneManager.addEntity(image);

			//var cos:Number = Math.cos(45 * Math.PI / 180);
			//var sin:Number = Math.sin(45 * Math.PI / 180);
			var o:Sprite = image.handle as Sprite;
			o.transform.matrix = new Matrix(1, 0.5, 0, 1);*/
		}

//		public static function testDynamicConnector() : void
//		{
//			var rect01:Rect = new Rect("rect01", new Rectangle(10, 10, 100, 50));
//			rect01.draggable = true;
//			var rect02:Rect = new Rect("rect02", new Rectangle(270, 150, 100, 50));
//			rect02.draggable = true;
//
//			var dc:DynamicConnector = new DynamicConnector("dc01");
//			dc.connect(rect01.centerAnchor, rect02.anchors[1]);
//
//			var root:Root = Root.instance;
//			root.sceneManager.addEntity(rect01);
//			root.sceneManager.addEntity(rect02);
//			root.sceneManager.addEntity(dc);
//		}

//		public static function test3DPlane() : void
//		{
//			var plane:Plane = new Plane();
//			var mat:ColorMaterial = new ColorMaterial(0xCBCBCB);
//			plane.material = mat;
//			plane.width = 1000;
//			plane.height = 1000;
//			plane.y = -100;
//			plane.z = 200;
//			plane.rotationY = 45;
//			
//			var p:Primitive = new Primitive("plane01", plane);
//			
//			var root:Root = Root.instance;
//			root.sceneManager.addEntity(p);
//		}
	}
}
