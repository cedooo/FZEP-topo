package cn.com.dhcc.fzep.topo.utils
{
	import com.adobe.serialization.json.JSON;
	
	import mx.utils.ObjectUtil;
	
	import cn.com.dhcc.fzep.topo.components.AreaComponent;
	import cn.com.dhcc.fzep.topo.components.CarrierComponent;
	import cn.com.dhcc.fzep.topo.components.GPRSComponent;
	import cn.com.dhcc.fzep.topo.components.OLTComponent;
	import cn.com.dhcc.fzep.topo.components.ONUComponent;
	import cn.com.dhcc.fzep.topo.components.SchemaElementComponent;
	import cn.com.dhcc.fzep.topo.components.SiteComponent;
	import cn.com.dhcc.fzep.topo.components.ThreeLayerSwitchComponent;
	import cn.com.dhcc.fzep.topo.components.TwoLayerSwitchComponent;
	import cn.com.dhcc.fzep.topo.poao.SchemaElementsInfo;
	
	import valueObjects.Area;
	import valueObjects.Carrier;
	import valueObjects.GPRS;
	import valueObjects.OLT;
	import valueObjects.ONU;
	import valueObjects.Site;
	import valueObjects.ThreeLayerSwitch;
	import valueObjects.TwoLayerSwitch;
	
	import xtreme.scene.entity.Entity;
	import xtreme.scene.entity.shapes.FlexComponent;

	public class TopoXMLUtils
	{
		public function TopoXMLUtils()
		{
		}
		public static function testJson():String {
			
			return null;
		}
		/**
		 * 根据图中设备的列表生成xml格式的 图信息
		 */
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
					}else if(ps.component is CarrierComponent){    //载波设备
						var carrier:CarrierComponent = ps.component as CarrierComponent;
						var carrierO:Carrier = carrier.carrier;
						stp += (carrierO.installationLocation  +"(" + ps.x + "," + ps.y +")");
					}
				}
			}
			return stp;
		}
		
		/**
		 * 根据图中设备的列表生成json格式的 图信息
		 */
		public static function generateJSON(list:Array):String{
			var stp:String = "[";
			for(var i:int = 0; i<list.length; i++){
				var enti:Entity = list[i];
				var eleInfo:SchemaElementsInfo = new SchemaElementsInfo();
				if(enti is FlexComponent){
					var ps:FlexComponent = enti as FlexComponent;
					eleInfo.x = ps.x;
					eleInfo.y = ps.y;   
					if(ps.component is CarrierComponent){    //载波设备
						var carrier:CarrierComponent = ps.component as CarrierComponent;
						var carrierO:Carrier = carrier.carrier;
						eleInfo.id = carrierO.carrierId;
						eleInfo.showName = carrierO.carrierName;
						eleInfo.type = ObjectUtil.getClassInfo(carrierO).name;
						eleInfo.imgPath = "assets/equip/carrier.png";
						stp += JSON.encode(eleInfo) + ",";
					}else if(ps.component is GPRSComponent){    //GPRS无线设备
						var gprs:GPRSComponent = ps.component as GPRSComponent;
						var gprsO:GPRS = gprs.gprs;
						eleInfo.id = gprsO.gprsId;
						eleInfo.showName = gprsO.gprsName;
						eleInfo.type = ObjectUtil.getClassInfo(gprsO).name;
						eleInfo.imgPath = "assets/equip/AP.png";
						stp += JSON.encode(eleInfo) + ",";
					}else if(ps.component is OLTComponent){    //OLT设备
						var olt:OLTComponent = ps.component as OLTComponent;
						var oltO:OLT = olt.olt;
						eleInfo.id = oltO.oltId;
						eleInfo.showName = oltO.oltName;
						eleInfo.type = ObjectUtil.getClassInfo(oltO).name;
						eleInfo.imgPath = "assets/equip/OLT.png";
						stp += JSON.encode(eleInfo) + ",";
					}else if(ps.component is ONUComponent){    //ONU设备
						var onu:ONUComponent = ps.component as ONUComponent;
						var onuO:ONU = onu.onu;
						eleInfo.id = onuO.onuId;
						eleInfo.showName = onuO.onuName;
						eleInfo.type = ObjectUtil.getClassInfo(onuO).name;
						eleInfo.imgPath = "assets/equip/onu.png";
						stp += JSON.encode(eleInfo) + ",";
					}else if(ps.component is ThreeLayerSwitchComponent){    //载波设备
						var l3Switch:ThreeLayerSwitchComponent = ps.component as ThreeLayerSwitchComponent;
						var l3SwitchO:ThreeLayerSwitch = l3Switch.l3switch;
						eleInfo.id = l3SwitchO.switchId;
						eleInfo.showName = l3SwitchO.switchName;
						eleInfo.type = ObjectUtil.getClassInfo(l3SwitchO).name;
						eleInfo.imgPath = "assets/equip/l3switch.png";
						stp += JSON.encode(eleInfo) + ",";
					}else if(ps.component is TwoLayerSwitchComponent){    //载波设备
						var l2Switch:TwoLayerSwitchComponent = ps.component as TwoLayerSwitchComponent;
						var l2SwitchO:TwoLayerSwitch = l2Switch.l2switch;
						eleInfo.id = l2SwitchO.switchId;
						eleInfo.showName = l2SwitchO.switchName;
						eleInfo.type = ObjectUtil.getClassInfo(l2SwitchO).name;
						eleInfo.imgPath = "assets/equip/l2switch.png";
						stp += JSON.encode(eleInfo) + ",";
					}else if(ps.component is SiteComponent){    //站点
						var siteCom:SiteComponent = ps.component as SiteComponent;
						var siteO:Site = siteCom.site;
						eleInfo.id = siteO.siteId;
						eleInfo.showName = siteO.siteName;
						eleInfo.type = ObjectUtil.getClassInfo(siteO).name;
						eleInfo.imgPath = "assets/tower.png";
						stp += JSON.encode(eleInfo) + ",";
					}else if(ps.component is SchemaElementComponent){
						var ele:SchemaElementComponent = ps.component as SchemaElementComponent;
						eleInfo = ele.eleInfo;
						stp += JSON.encode(eleInfo) + ",";
					}
				}
			}
			var paten:RegExp = /,$/;   //去掉返回json数组最后的‘,’ 的正则表达式 
			var fstp:String = "";
			fstp = stp.replace(paten," ");
			fstp += "]";
			return fstp;
		}
	}
}