package cn.com.dhcc.fzep.topo.common
{
	import com.adobe.serialization.json.JSON;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.controls.Label;
	import mx.rpc.CallResponder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.utils.ObjectUtil;
	
	import spark.components.Panel;
	import spark.components.TextArea;
	
	import services.Equip;
	import services.SiteEquip;
	
	import valueObjects.EquipmentVO;
	import valueObjects.Cable;
	import valueObjects.Carrier;
	import valueObjects.GPRS;
	import valueObjects.OLT;
	import valueObjects.ONU;
	import valueObjects.Site;
	import valueObjects.ThreeLayerSwitch;
	import valueObjects.TwoLayerSwitch;
	
	import xtreme.core.Root;
	import xtreme.scene.SceneHelper;
	import xtreme.scene.SceneManager;
	import xtreme.scene.entity.shapes.FlexComponent;
	import xtreme.ui.ProgressBar;

	public final class EquipList
	{

		public function EquipList()
		{
		}
		
		public function clearup() : void
		{
			// 清空场景
			Root.instance.sceneManager.clearScene();
		}

		protected var siteEquip:SiteEquip = new SiteEquip();
		protected var responder:CallResponder = new CallResponder();
		/**
		 * 加载站点设备
		 */
		public function loadBySite(site:Site):void{
			this.clearup();
			responder.token = siteEquip.getEquipmentListBySiteId(site.siteId);
			responder.addEventListener(ResultEvent.RESULT, onResult);
			responder.addEventListener(FaultEvent.FAULT, onFault);
		}
		
		private static var PADDING_TOP:int = 10;
		private static var PADDING_LEFT:int = 10;
		
		private static var EQUIP_PANEL_WIDTH:int = 240;
		private static var EQUIP_PANEL_HEIGHT:int = 170;
		private static var EQUIP_PANEL_PADDING_X:int  = EQUIP_PANEL_WIDTH + 10;
		private static var EQUIP_PANEL_PADDING_Y:int  = EQUIP_PANEL_HEIGHT + 10;
		
		
		private static var CABLE_TYPE_REGEXP:RegExp = /class.*\.Cable/;
		private static var CARRIER_TYPE_REGEXP:RegExp = /class.*\.Carrier/;
		private static var GPRS_TYPE_REGEXP:RegExp = /class.*\.GPRS/;
		private static var OLT_TYPE_REGEXP:RegExp = /class.*\.OLT/;
		private static var ONU_TYPE_REGEXP:RegExp = /class.*\.ONU/;
		private static var LAYER_3_TYPE_SWITCH_REGEXP:RegExp = /class.*\.ThreeLayerSwitch/;
		private static var LAYER_2_TYPE_SWITCH_REGEXP:RegExp = /class.*\.TwoLayerSwitch/;
		
		protected function onResult(event:ResultEvent):void{   
			this.clearup();
			
			var root:Root = Root.instance;
			var sceneHelper:SceneHelper = root.sceneHelper;
			var sceneMgr:SceneManager = root.sceneManager;
			var resArray:ArrayCollection = event.result as ArrayCollection;
			if(resArray&&resArray.length>0){
				var pb:ProgressBar = root.effectGenerator.showProgressBar(true, true);
				var x:int = PADDING_LEFT;
				var y:int = PADDING_TOP;
				
				var viewWidth:int = root.viewportWidth;
				x =( viewWidth + (EQUIP_PANEL_PADDING_X-EQUIP_PANEL_WIDTH) -  EQUIP_PANEL_PADDING_X *( int(viewWidth/EQUIP_PANEL_PADDING_X) ) )/2;
				//sceneHelper.beginAddEntity(getEquipMoreInfo);
				for (var i:int = 0; i < resArray.length; i++) 
				{
					var equip:EquipmentVO = resArray.getItemAt(i) as EquipmentVO;
					
					var comName:String = generatePanelName(equip);
					if(!sceneMgr.existsEntity(comName)){
						var panel:Panel = new Panel();
						panel.width = EQUIP_PANEL_WIDTH;
						panel.height = EQUIP_PANEL_HEIGHT;
						panel.title = equip.name;
						panel.setStyle("dropShadowVisible", false);
						
						var jsonObj:Object = JSON.decode(equip.jsonData);
						var txt:TextArea = new TextArea();
						txt.percentHeight = 100;
						txt.percentWidth = 100;
						var delFlg:String = jsonObj['delFlg'];
						if(equip.type.match(CABLE_TYPE_REGEXP)){
							txt.text = jsonObj['cableName'];
							txt.text += equip.jsonData;
						}else if(equip.type.match(GPRS_TYPE_REGEXP)){
							txt.text = jsonObj['gprsName'];
							txt.text += equip.jsonData;
						}else{
							txt.text = equip.jsonData;
						}
						panel.addElement(txt)
						
						
						var fCom:FlexComponent = new FlexComponent(comName, panel);
						fCom.draggable = false;
						fCom.editable = false;
						sceneHelper.addEntity(fCom, function():void {
							root.xtremeComponent.enabled = true;
							root.effectGenerator.hideProgressBar();
						});
						if(x+EQUIP_PANEL_WIDTH>root.stageWidth){
							x =( viewWidth + (EQUIP_PANEL_PADDING_X-EQUIP_PANEL_WIDTH) -  EQUIP_PANEL_PADDING_X *( int(viewWidth/EQUIP_PANEL_PADDING_X) ) )/2;
							y += EQUIP_PANEL_PADDING_Y;
						}
						fCom.x = x;
						fCom.y = y;
						x += EQUIP_PANEL_PADDING_X;
					 }else{
						 Alert.show('已经存在对象：' + comName, '错误');
					 }
				}//end for loop
			}else{
				//站点设备数量为0
				var label:Label = new Label();
				label.text = "该站点没有可用设备";
				
				var remind:FlexComponent = new FlexComponent("testT", label);
				remind.width = EQUIP_PANEL_WIDTH;
				remind.height = EQUIP_PANEL_HEIGHT;
				remind.x = 0;
				remind.y = 0;
				sceneMgr.addEntity(remind);
			}
			/*
			var testPanel:TitleWindowWithStatus = new TitleWindowWithStatus();
			testPanel.inUse = true;
			testPanel.title = "你好,world";
			testPanel.percentHeight = 100;
			testPanel.percentWidth = 100;
			var testCom:FlexComponent = new FlexComponent("testT", testPanel);
			testCom.width = EQUIP_PANEL_WIDTH;
			testCom.height = EQUIP_PANEL_HEIGHT;
			testCom.x = x;
			testCom.y = y;
			sceneMgr.addEntity(testCom);
			*/
		}
		
		[Embed("assets/status_green.png")]
		private var IconGreen:Class;
		[Embed("assets/status_gray.png")]
		private var IconGray:Class;
		
		private static var GET_EQUIP_LIST_FAULT_REMIND:String = "无法获取站点设备列表";
		private static var ERROR_REMIND_TITLE:String = "错误";
		protected function onFault(event:ResultEvent):void{ Alert.show(GET_EQUIP_LIST_FAULT_REMIND,ERROR_REMIND_TITLE); }
		
		private static var CABLE_REGEXP:RegExp = /panel.*\.Cable/;
		private static var CARRIER_REGEXP:RegExp = /panel.*\.Carrier/;
		private static var GPRS_REGEXP:RegExp = /panel.*\.GPRS/;
		private static var OLT_REGEXP:RegExp = /panel.*\.OLT/;
		private static var ONU_REGEXP:RegExp = /panel.*\.ONU/;
		private static var LAYER_3_SWITCH_REGEXP:RegExp = /panel.*\.ThreeLayerSwitch/;
		private static var LAYER_2_SWITCH_REGEXP:RegExp = /panel.*\.TwoLayerSwitch/;
		
		private static var EQUIP_ID_REGEXP:RegExp = /_(\d+)$/;
		/**
		 * 得到站点更多详细信息
		 */
		public function getEquipMoreInfo():void{
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var entityList:Array = sceneMgr.entityList();
			//Alert.show(''+entityList.length); 
			var equip:Equip = new Equip(); 
			try{
				var responderArray:Array = new Array();
				for (var i:int = 0; i < entityList.length; i++) 
				{
					var fCom:FlexComponent = entityList[i] as FlexComponent;
					//Alert.show(fCom.name);
					responderArray.push(new CallResponder());
					if(fCom.name){
						var idIndex:int = fCom.name.search(EQUIP_ID_REGEXP);
						var id:String = fCom.name.substring(idIndex+1);
						var queryResponder:CallResponder = responderArray[responderArray.length-1];
						if(fCom.name.match(CABLE_REGEXP)){
							//Alert.show(id);
							queryResponder.token = equip.getCableById(id);
							queryResponder.addEventListener(ResultEvent.RESULT,loadedCable);
							queryResponder.addEventListener(FaultEvent.FAULT,loadedCableFault);
						}else if(fCom.name.match(CARRIER_REGEXP)){
							queryResponder.token = equip.getCarrierById(id);
							queryResponder.addEventListener(ResultEvent.RESULT,loadedCarrier);
						}else if(fCom.name.match(GPRS_REGEXP)){
							queryResponder.token = equip.getGPRSById(id);
							queryResponder.addEventListener(ResultEvent.RESULT,loadedGPRS);
						}else if(fCom.name.match(OLT_REGEXP)){
							queryResponder.token = equip.getOLTById(id);
							queryResponder.addEventListener(ResultEvent.RESULT,loadedOLT);
						}else if(fCom.name.match(ONU_REGEXP)){
							queryResponder.token = equip.getONUById(id);
							queryResponder.addEventListener(ResultEvent.RESULT,loadedONU);
						}else if(fCom.name.match(LAYER_3_SWITCH_REGEXP)){
							queryResponder.token = equip.getThreeLayerSwitchById(id);
							queryResponder.addEventListener(ResultEvent.RESULT,loaded3LayerSwitch);
						}else if(fCom.name.match(LAYER_2_SWITCH_REGEXP)){
							queryResponder.token = equip.getTwoLayerSwitchById(id);
							queryResponder.addEventListener(ResultEvent.RESULT,loaded2LayerSwitch);
						}else {
							Alert.show('数据格式错误\n' + fCom.name,'错误');
						}
					}else{
						//DO NOTHING
					}
				}
			}finally{
				Root.instance.effectGenerator.hideProgressBar();
			}
		}
		protected function loadedCable(event:ResultEvent ):void{  
			var cable:Cable = new Cable();
			cable.cableId = event.result['cableId'];
			cable.cableName = event.result['cableName'];
			cable.descp = event.result['descp'];
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var panelComName:String = ObjectUtil.getClassInfo(Cable).name + cable.cableId;
			if(sceneMgr.existsEntity(panelComName)){
				var fCom:FlexComponent = sceneMgr.getEntity(panelComName) as FlexComponent; 
				var panel:Panel = fCom.component as Panel;
				
				var label:Label = new Label();
				label.text = cable.cableId + "--" + cable.cableName;
				panel.addElement(label)
			}else{
				//Alert.show("光缆不存在，ID错误\n" + cable.cableId,"错误");
			}
		}
		protected function loadedCableFault(event:FaultEvent ):void{  
			Alert.show("无法获取光缆数据","错误");
		}
		protected function loadedCarrier(event:ResultEvent ):void{  
			var carrier:Carrier = event.result as Carrier;
			//Alert.show("载波;" + carrier.carrierName);
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var panelComName:String =  ObjectUtil.getClassInfo(Carrier).name+ carrier.carrierId;
			if(sceneMgr.existsEntity(panelComName)){
				var fCom:FlexComponent = sceneMgr.getEntity(panelComName) as FlexComponent; 
				var panel:Panel = fCom.component as Panel;
				
				var label:Label = new Label();
				label.text = carrier.carrierName + carrier.delFlg;
				panel.addElement(label)
			}
		}
		protected function loadedGPRS(event:ResultEvent ):void{  
			var gprs:GPRS = event.result as GPRS;
			//Alert.show("载波;" + carrier.carrierName);
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var panelComName:String =  ObjectUtil.getClassInfo(GPRS).name + gprs.gprsId;
			if(sceneMgr.existsEntity(panelComName)){
				var fCom:FlexComponent = sceneMgr.getEntity(panelComName) as FlexComponent; 
				var panel:Panel = fCom.component as Panel;
				
				var label:Label = new Label();
				label.text = gprs.gprsName + gprs.descp;
				panel.addElement(label)
			}
		}
		protected function loadedONU(event:ResultEvent ):void{  
			var onu:ONU = event.result as ONU;
			//Alert.show("载波;" + carrier.carrierName);
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var panelComName:String = ObjectUtil.getClassInfo(ONU).name + onu.onuId;
			if(sceneMgr.existsEntity(panelComName)){
				var fCom:FlexComponent = sceneMgr.getEntity(panelComName) as FlexComponent; 
				var panel:Panel = fCom.component as Panel;
				
				var label:Label = new Label();
				label.text = onu.onuName + onu.descp;
				panel.addElement(label)
			}
		}
		protected function loadedOLT(event:ResultEvent ):void{  
			var olt:OLT = event.result as OLT;
			//Alert.show("载波;" + carrier.carrierName);
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var panelComName:String = ObjectUtil.getClassInfo(OLT).name + olt.oltId;
			if(sceneMgr.existsEntity(panelComName)){
				var fCom:FlexComponent = sceneMgr.getEntity(panelComName) as FlexComponent; 
				var panel:Panel = fCom.component as Panel;
				
				var label:Label = new Label();
				label.text = olt.oltName + olt.delFlg;
				panel.addElement(label)
			}
		}
		protected function loaded3LayerSwitch(event:ResultEvent ):void{  
			var l3Switch:ThreeLayerSwitch = new ThreeLayerSwitch();//event.result as ThreeLayerSwitch;
			l3Switch.switchName= event.result['switchName'];
			l3Switch.switchId = event.result['switchId'];
			l3Switch.delFlg = event.result['delFlg'];
			//Alert.show("3层交换机" + carrier.carrierName);
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var panelComName:String = ObjectUtil.getClassInfo(ThreeLayerSwitch).name + l3Switch.switchId;
			if(sceneMgr.existsEntity(panelComName)){
				var fCom:FlexComponent = sceneMgr.getEntity(panelComName) as FlexComponent; 
				var panel:Panel = fCom.component as Panel;
				var label:Label = new Label();
				label.text = l3Switch.switchName + l3Switch.delFlg;
				panel.addElement(label)
			}
		}
		protected function loaded2LayerSwitch(event:ResultEvent ):void{  
			var l2Switch:TwoLayerSwitch = event.result as TwoLayerSwitch;
			//Alert.show("载波;" + carrier.carrierName);
			var sceneMgr:SceneManager = Root.instance.sceneManager;
			var panelComName:String = ObjectUtil.getClassInfo(TwoLayerSwitch).name + l2Switch.switchId;
			if(sceneMgr.existsEntity(panelComName)){
				var fCom:FlexComponent = sceneMgr.getEntity(panelComName) as FlexComponent; 
				var panel:Panel = fCom.component as Panel;
				
				var label:Label = new Label();
				label.text = l2Switch.switchName + l2Switch.descp;
				panel.addElement(label)
			}
		}
		/**
		 * 根据抽象设备得到Panel名称
		 */	
		public function generatePanelName(ae:EquipmentVO):String{
			var comName:String =  ae.type + "_" + ae.id;
			return comName;
		}
		
		
	}
}