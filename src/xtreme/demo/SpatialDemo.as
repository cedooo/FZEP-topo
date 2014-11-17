package xtreme.demo
{
	import flash.utils.setTimeout;
	
	import xtreme.core.Root;
	import xtreme.scene.SceneManager;
	import xtreme.scene.entity.Isogon;
	import xtreme.scene.entity.Particle;

	/**
	 */
	public final class SpatialDemo
	{
		public function SpatialDemo()
		{
		}

		public function main() : void
		{
			buildLayer();
			smokeAndFire();
		}

		protected function fire() : void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var fire:Particle = Root.instance.effectGenerator.createFireParticle(150, 380, 300, 400);
			sceneMgr.addEntity(fire);
			fire.x = 250;
			fire.y = -120;
			flash.utils.setTimeout(function():void {
				fire.start();
			}, 1000);
		}

		protected function smoke() : void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var smoke:Particle = Root.instance.effectGenerator.createSmokeParticle(150, 380, 300, 400);
			sceneMgr.addEntity(smoke);
			smoke.x = 250;
			smoke.y = -120;
			flash.utils.setTimeout(function():void {
				smoke.start();
			}, 1000);
		}

		protected function smokeAndFire() : void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var particle:Particle = Root.instance.effectGenerator.createFireAndSmokeParticle(150, 380, 300, 400);
			sceneMgr.addEntity(particle);
			particle.x = 250;
			particle.y = -120;
			flash.utils.setTimeout(function():void {
				particle.start();
				setTimeout(function():void {
					particle.stop();
				}, 60000);
			}, 1000);
		}

		private function buildLayer() : void
		{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var tile:Isogon;
			var x:Number, z:Number, y:Number;
			var i:int, j:int;
			for (i = 0; i < 10; i++)
			{
				for (j = 0; j < 10; j++)
				{
					x = i * 40;
					z = j * 40;

					y = 0;
					tile = new Isogon("floor_" + x + "_" + z + "_" + y, 40);
					tile.setPosition(x, y, z);
					tile.showPlaceholder();
					sceneMgr.addEntity(tile);

					y = 240;
					tile = new Isogon("floor_" + x + "_" + z + "_" + y, 40);
					tile.setPosition(x, y, z);
					tile.showPlaceholder();
					sceneMgr.addEntity(tile);

					y = 480;
					tile = new Isogon("floor_" + x + "_" + z + "_" + y, 40);
					tile.setPosition(x, y, z);
					tile.showPlaceholder();
					sceneMgr.addEntity(tile);
				}
			}
		}
	}
}
