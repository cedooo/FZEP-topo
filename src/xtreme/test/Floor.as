package xtreme.test
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.geom.Rectangle;
	
	import xtreme.scene.entity.shapes.Rect;
	
	public class Floor extends Rect
	{
		public function Floor(name:String, row:int, col:int, size:int)
		{
			super(name, new Rectangle(0, 0, 10, 10));
			_rect.width = row * size;
			_rect.height = col * size;
		}

		override public function render():void
		{
			super.render();

			draw();
		}

		private function draw() : void
		{
			var ctx:Sprite = this.context;
			var g:Graphics = ctx.graphics;
			g.clear();
			for (var i:int = 0; i < 20; ++i)
			{
				g.beginFill(i % 2 == 0 ? 0xE1FFE1 : 0xFFE1FF, 1.0);
				g.drawRect(i * 10, 0, 20, 20);
				g.endFill();
			}
		}
	}
}