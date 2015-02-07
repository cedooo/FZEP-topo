package cn.com.dhcc.fzep.topo.utils
{
	import com.adobe.serialization.json.JSON;
	
	import flash.events.MouseEvent;
	import flash.ui.ContextMenu;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
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
	import valueObjects.Cable;
	import valueObjects.Carrier;
	import valueObjects.GPRS;
	import valueObjects.OLT;
	import valueObjects.ONU;
	import valueObjects.Site;
	import valueObjects.ThreeLayerSwitch;
	import valueObjects.TwoLayerSwitch;
	
	import xtreme.core.Root;
	import xtreme.scene.SceneManager;
	import xtreme.scene.entity.Entity;
	import xtreme.scene.entity.shapes.DynamicConnector;
	import xtreme.scene.entity.shapes.FlexComponent;

	public class TopoUtils
	{
		public function TopoUtils()
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
					if(ps.component is CarrierComponent){    //载波设备
						var carrier:CarrierComponent = ps.component as CarrierComponent;
						var carrierO:Carrier = carrier.carrier;
						eleInfo.id = carrierO.carrierId;
						eleInfo.showName = carrierO.carrierName;
						eleInfo.type = ObjectUtil.getClassInfo(carrierO).name;
						eleInfo.imgPath = "assets/equip/carrier.png";
					}else if(ps.component is GPRSComponent){    //GPRS无线设备
						var gprs:GPRSComponent = ps.component as GPRSComponent;
						var gprsO:GPRS = gprs.gprs;
						eleInfo.id = gprsO.gprsId;
						eleInfo.showName = gprsO.gprsName;
						eleInfo.type = ObjectUtil.getClassInfo(gprsO).name;
						eleInfo.imgPath = "assets/equip/AP.png";
					}else if(ps.component is OLTComponent){    //OLT设备
						var olt:OLTComponent = ps.component as OLTComponent;
						var oltO:OLT = olt.olt;
						eleInfo.id = oltO.oltId;
						eleInfo.showName = oltO.oltName;
						eleInfo.type = ObjectUtil.getClassInfo(oltO).name;
						eleInfo.imgPath = "assets/equip/OLT.png";
					}else if(ps.component is ONUComponent){    //ONU设备
						var onu:ONUComponent = ps.component as ONUComponent;
						var onuO:ONU = onu.onu;
						eleInfo.id = onuO.onuId;
						eleInfo.showName = onuO.onuName;
						eleInfo.type = ObjectUtil.getClassInfo(onuO).name;
						eleInfo.imgPath = "assets/equip/onu.png";
					}else if(ps.component is ThreeLayerSwitchComponent){    //载波设备
						var l3Switch:ThreeLayerSwitchComponent = ps.component as ThreeLayerSwitchComponent;
						var l3SwitchO:ThreeLayerSwitch = l3Switch.l3switch;
						eleInfo.id = l3SwitchO.switchId;
						eleInfo.showName = l3SwitchO.switchName;
						eleInfo.type = ObjectUtil.getClassInfo(l3SwitchO).name;
						eleInfo.imgPath = "assets/equip/l3switch.png";
					}else if(ps.component is TwoLayerSwitchComponent){    //载波设备
						var l2Switch:TwoLayerSwitchComponent = ps.component as TwoLayerSwitchComponent;
						var l2SwitchO:TwoLayerSwitch = l2Switch.l2switch;
						eleInfo.id = l2SwitchO.switchId;
						eleInfo.showName = l2SwitchO.switchName;
						eleInfo.type = ObjectUtil.getClassInfo(l2SwitchO).name;
						eleInfo.imgPath = "assets/equip/l2switch.png";
					}else if(ps.component is SiteComponent){    //站点
						var siteCom:SiteComponent = ps.component as SiteComponent;
						var siteO:Site = siteCom.site;
						eleInfo.id = siteO.siteId;
						eleInfo.showName = siteO.siteName;
						eleInfo.type = ObjectUtil.getClassInfo(siteO).name;
						eleInfo.imgPath = "assets/tower.png";
					}else if(ps.component is SchemaElementComponent){
						var ele:SchemaElementComponent = ps.component as SchemaElementComponent;
						eleInfo = ele.eleInfo;
					}
					eleInfo.x = ps.x;
					eleInfo.y = ps.y;
					if(eleInfo.id.length>0&&eleInfo.showName.length>0){
						stp += JSON.encode(eleInfo) + ",";
					}
				}else if(enti is DynamicConnector){
					var connector:DynamicConnector = enti as DynamicConnector;
					eleInfo.type = ObjectUtil.getClassInfo(Cable).name;
					var cableObj:Cable = connector.customData as Cable;
					eleInfo.id = cableObj.cableId;
					eleInfo.startId = cableObj.cableStartId;
					eleInfo.endId = cableObj.cableEndId;
					eleInfo.isMainRoad = cableObj.isMainRoad;
					if(eleInfo.id.length>0&&eleInfo.startId.length>0&&eleInfo.endId.length>0){
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
		public static  var lineColors:Array =  new Array(0x725746,0x5ca1d7,0x9dd6f4, 0xff9f64);    //光缆颜色
		/**
		 * <b>工具：</b>
		 * 将光缆加入到图中
		 */
		public static function addCableToSchema(sceneMgr:SceneManager,cable:Cable, cableContextMenu:ContextMenu):void{
			var startID:String = cable.cableStartId;
			var endID:String = cable.cableEndId;
			var fName:String = ObjectUtil.getClassInfo(Site).name + startID ;
			var eName:String = ObjectUtil.getClassInfo(Site).name + endID ;
			var startExisted:Boolean = sceneMgr.existsEntity(fName);
			var endExisted:Boolean = sceneMgr.existsEntity(eName);
			if(startExisted && endExisted){
				var startComponent:FlexComponent = sceneMgr.getEntity(fName) as FlexComponent;
				var endComponent:FlexComponent = sceneMgr.getEntity(eName) as FlexComponent;
				if(startComponent && endComponent){
					var cableID:String = cable.cableId;
					var connectorName:String = ObjectUtil.getClassInfo(Cable).name+ cableID;
					if(!sceneMgr.existsEntity(connectorName)){
						var connector:DynamicConnector = new DynamicConnector(connectorName);
						//var connector:CustomDynamicConnector = new CustomDynamicConnector(connectorName);
						connector.lineThickness = cable.isMainRoad=='是'?4:2;
						connector.lineColor = 0x66A6D9;//lineColors[(int)(Math.random()*10)%lineColors.length];
						connector.connect(startComponent.centerAnchor, endComponent.centerAnchor);
						connector.alpha = 1;
						connector.editable = false;
						connector.contextMenu = cableContextMenu;
						connector.customData = cable;
						sceneMgr.addEntity(connector);
					}
				}
			}else{
				Alert.show("添加光缆时，对应站点不在图中", "错误");
			}
		}
		
		/**
		 * 加载视图数据
		 */
		public static function loadSchema(sceneMgr:SceneManager, data:String, siteContextMenu:ContextMenu, cableContextMenu:ContextMenu, siteComponent_doubleClickHandler:Function, draggable:Boolean=false):void {
			Root.instance.sceneManager.clearScene();
			var rawData:String = String(data);  
			var arr:Array = (JSON.decode(rawData) as Array);  
			var dp:ArrayCollection = new ArrayCollection(arr);  
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			try{
				var cableArray:Array = new Array();
				for (var i:int = 0; i < dp.length; i++) 
				{
					var obj:Object =  dp.getItemAt(i);
					var seInfo:SchemaElementsInfo = new SchemaElementsInfo();
					
					seInfo.id = obj.id;
					seInfo.imgPath = obj.imgPath;
					seInfo.showName = obj.showName;
					seInfo.type = obj.type;
					seInfo.x = obj.x;
					seInfo.y = obj.y;
					
					var isNotCable:Boolean = seInfo.type.search(ObjectUtil.getClassInfo(Cable).name)==-1
					if(isNotCable){
						var elementCom:SchemaElementComponent = new SchemaElementComponent();
						elementCom.imgName = seInfo.imgPath;
						elementCom.eleInfo = seInfo;
						
						elementCom.contextMenu = siteContextMenu;
						elementCom.addEventListener(MouseEvent.DOUBLE_CLICK, siteComponent_doubleClickHandler);
						var eid:String = seInfo.type + seInfo.id;
						var equipFC:FlexComponent = new FlexComponent(eid, elementCom);
						equipFC.draggable = draggable;
						equipFC.editable = false;
						equipFC.x = seInfo.x;
						equipFC.y = seInfo.y;
						equipFC.width = 60;
						equipFC.height = 60;
						
						sceneMgr.addEntity(equipFC);
					}else {
						var cable:Cable = new Cable();
						cable.cableId = obj.id;
						cable.cableStartId = obj.startId;
						cable.cableEndId = obj.endId;
						cable.isMainRoad = obj.isMainRoad;
						cableArray.push(cable);
					}
				}
				for each (var cables:Cable in cableArray) 
				{
					TopoUtils.addCableToSchema(Root.instance.sceneManager, cables, cableContextMenu);
				}
				
				
			}catch(e:Error){   
				Alert.show("视图存在错误","出错了");
			}
			/*
			var ori:Image = new Image();
			ori.width = 48;
			ori.height = 48;
			ori.source = "assets/origin_48.png";
			ori.alpha = 0.1;
			var eqOri:FlexComponent = new FlexComponent("origin", ori);
			eqOri.draggable = false;
			eqOri.x = -24;
			eqOri.y = -24;
			eqOri.width = 48;
			eqOri.height = 48;
			sceneMgr.addEntity(eqOri);
			*/
		}
	}
	
}