package cn.com.dhcc.fzep.topo
{
	import xtreme.scene.entity.Entity;
	import xtreme.scene.entity.shapes.FlexComponent;

	public class TopoXMLUtils
	{
		public function TopoXMLUtils()
		{
		}
		public static function generateXML(list:Array):String{
			var stp:String = "";
			for(var i:int = 0; i<list.length; i++){
				var enti:Entity = list[i];
				if(enti is FlexComponent){
					var ps:FlexComponent = enti as FlexComponent;
					stp += (ps.name +"(" + ps.x + "," + ps.y +")");
				}
			}
			return stp;
		}
	}
}