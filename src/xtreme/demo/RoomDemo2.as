package xtreme.demo
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	import xtreme.core.Root;
	import xtreme.scene.SceneManager;
	import xtreme.scene.entity.HorizontalFloor;
	import xtreme.scene.entity.Isogon;
	import xtreme.scene.entity.IsogonBillboard;
	import xtreme.scene.entity.IsogonBox;

	public final class RoomDemo2
	{
		[Embed(source="../../assets/slogan_1.jpg")] public static var Slogan1:Class;
		[Embed(source="../../assets/slogan_2.jpg")] public static var Slogan2:Class;

		private var _tileSize:int = 50;
		private var _tileNumber:int = 10;
		
		private var _sceneMgr:SceneManager;

		public function RoomDemo2()
		{
			_sceneMgr = Root.instance.sceneManager;
		}
		
		public function main() : void
		{
			placeFloor();

			//placeBox();
			
			//placeDemoIsogonBillboard();
		}

		private function placeFloor() : void
		{
			var tile:Isogon;
			var x:Number, z:Number;

			var floor:HorizontalFloor = new HorizontalFloor("floor_a", _tileSize, _tileNumber, _tileNumber - 5);
			floor.setPosition(0, 0, 0);

			var tex1Data:BitmapData = new BitmapData(32, 32, false, 0xBDBCC2);
			var tex1:Bitmap = new Bitmap(tex1Data);
			var tex2Data:BitmapData = new BitmapData(32, 32, false, 0xB3B2B8);
			var tex2:Bitmap = new Bitmap(tex2Data);

			floor.setTileTexture(tex1, tex2);

			_sceneMgr.addEntity(floor);
		}

		private function placeBox() : void
		{
			var box:IsogonBox = new IsogonBox("test_box1", _tileSize, _tileSize * 2);
			box.setPosition(0, 0, 0);
			_sceneMgr.addEntity(box);
		}

		private function placeDemoIsogonBillboard() : void
		{
			var slogan1:IsogonBillboard = new IsogonBillboard("slogan_1", _tileSize);
			slogan1.setPosition(4 * _tileSize, 0, 6 * _tileSize);
			slogan1.texture = (new Slogan1()) as Bitmap;
			slogan1.setTextureFace(IsogonBillboard.TEXFACE_FRONT, false);
			slogan1.hang = 0;
			slogan1.showPlaceholder();
			_sceneMgr.addEntity(slogan1);

			var slogan2:IsogonBillboard = new IsogonBillboard("slogan_2", _tileSize);
			slogan2.setPosition(6 * _tileSize, 0, 4 * _tileSize);
			slogan2.texture = (new Slogan2()) as Bitmap;
			slogan2.setTextureFace(IsogonBillboard.TEXFACE_SIDE, false);
			slogan2.hang = 0;
			slogan2.showPlaceholder();
			_sceneMgr.addEntity(slogan2);
		}
	}
}
