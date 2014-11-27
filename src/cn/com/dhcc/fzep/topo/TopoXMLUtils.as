package cn.com.dhcc.fzep.topo
{
	import cn.com.dhcc.fzep.topo.components.AreaComponent;
	import cn.com.dhcc.fzep.topo.components.CarrierComponent;
	import cn.com.dhcc.fzep.topo.components.SiteComponent;
	
	import valueObjects.Area;
	import valueObjects.Carrier;
	import valueObjects.Site;
	
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
					if(ps.component is AreaComponent){    //区域组件
						var areaC:AreaComponent = ps.component as AreaComponent;
						var areaO:Area = areaC.area;
						stp += (ps.name + areaO.areaId +"(" + ps.x + "," + ps.y +")");
					}else if(ps.component is SiteComponent){    //区域组件
						var site:SiteComponent = ps.component as SiteComponent;
						var siteO:Site = site.site;
						stp += (siteO.siteName + siteO.siteId +"(" + ps.x + "," + ps.y +")");
					}else if(ps.component is CarrierComponent){    //区域组件
						var carrier:CarrierComponent = ps.component as CarrierComponent;
						var carrierO:Carrier = carrier.carrier;
						stp += (carrierO.installationLocation  +"(" + ps.x + "," + ps.y +")");
					}
				}
			}
			return stp;
		}
	}
}