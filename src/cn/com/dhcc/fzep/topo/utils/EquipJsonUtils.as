package cn.com.dhcc.fzep.topo.utils
{
	public class EquipJsonUtils
	{
		public static var CABLE_TYPE_REGEXP:RegExp = /class.*\.Cable/;
		public static var CARRIER_TYPE_REGEXP:RegExp = /class.*\.Carrier/;
		public static var GPRS_TYPE_REGEXP:RegExp = /class.*\.GPRS/;
		public static var OLT_TYPE_REGEXP:RegExp = /class.*\.OLT/;
		public static var ONU_TYPE_REGEXP:RegExp = /class.*\.ONU/;
		public static var LAYER_3_TYPE_SWITCH_REGEXP:RegExp = /class.*\.ThreeLayerSwitch/;
		public static var LAYER_2_TYPE_SWITCH_REGEXP:RegExp = /class.*\.TwoLayerSwitch/;
		
		public static var GPRS_ATTR_NAME:Array = new Array(
			{showName:"GPRS名称", attrName:"gprsName" },
			{showName:"所属站点", attrName:"siteId" },
			{showName:"所属项目", attrName:"projectId" },
			{showName:"所属厂家", attrName:"manufacturersId" },
			{showName:"施工单位", attrName:"constructionUnitId" },
			{showName:"卡号", attrName:"cardNumber" },
			{showName:"调试情况", attrName:"debugging" },
			{showName:"是否有效", attrName:"delFlg" },
			{showName:"备注", attrName:"descp" },
			//{showName:"业务主键", attrName:"gprsId" },
			{showName:"安装地址", attrName:"installationSite" },
			{showName:"IP地址", attrName:"ip" },
			{showName:"运营商", attrName:"operators" },
			{showName:"投运时间", attrName:"runTime" },
			{showName:"技术类型", attrName:"technologyType" },
			{showName:"型号规格", attrName:"typeSpecification"}
		);
	
		public static var OLT_ATTR_NAME:Array = new Array(
			{showName:"OLT名称", attrName:"oltName"},
			{showName:"所属站点", attrName:"siteId"},
			{showName:"所属项目 ", attrName:"projectId"},
			{showName:"所属厂家", attrName:"manufacturersId"},
			{showName:"施工单位", attrName:"constructionUnitId"},
			{showName:"是否有效", attrName:"delFlg"},
			{showName:"备注", attrName:"descp"},
			{showName:"安装地点", attrName:"installationSite"},
			{showName:"LOOKBACK地址", attrName:"lookbackLocation"},
			{showName:"OSPF进程号", attrName:"oSPFNumber"},
			//{showName:"业务主键", attrName:"oltId"},
			{showName:"投运时间", attrName:"runTime"},
			{showName:"型号规格", attrName:"typeSpecification"},
			{showName:"VLAN ID", attrName:"vlanId"},
			{showName:"VPN实例名", attrName:"vpnNumber"}
		);
		public static var CARRIER_ATTR_NAME:Array = new Array(
			//{showName:"业务主键", attrName:"carrierId" },
			{showName:"载波名称", attrName:"carrierName" },
			{showName:"所属站点", attrName:"siteId" },
			{showName:"所属项目", attrName:"projectId" },
			{showName:"所属厂家", attrName:"manufacturersId" },
			{showName:"施工单位", attrName:"constructionUnitId" },
			{showName:"调试情况", attrName:"debugging" },
			{showName:"是否有效", attrName:"delFlg" },
			{showName:"备注", attrName:"descp" },
			{showName:"主载波安装地址", attrName:"installationLocation" },
			{showName:"安装地点", attrName:"installationSite" },
			{showName:"IP地址", attrName:"ip" },
			{showName:"投运时间", attrName:"runTime" },
			{showName:"型号规格", attrName:"typeSpecification"}
		);
		
		public static var ONU_ATTR_NAME:Array = new Array(
			{showName:"ONU名称", attrName:"onuName" },
			{showName:"所属站点", attrName:"siteId" },
			{showName:"所属项目", attrName:"projectId" },
			{showName:"所属厂家", attrName:"manufacturersId" },
			{showName:"施工单位", attrName:"constructionUnitId" },
			{showName:"是否有效", attrName:"delFlg" },
			{showName:"备注", attrName:"descp" },
			{showName:"安装地址", attrName:"installationSite" },
			//{showName:"业务主键", attrName:"onuId" },
			{showName:"OSPF进程号", attrName:"ospfNumber" },
			{showName:"投运时间", attrName:"runTime" },
			{showName:"型号规格", attrName:"typeSpecification" },
			{showName:"VLAN ID", attrName:"vlanId" },
			{showName:"VPN实例", attrName:"vpnNumber"}
		);
		public static var L3SWITCH_ATTR_NAME:Array = new Array(
			{showName:"设备名称", attrName:"threeLayerSwitchName" },
			{showName:"所属站点", attrName:"siteId" },
			{showName:"施工单位", attrName:"constructionUnitId" },
			{showName:"是否有效", attrName:"delFlg" },
			{showName:"备注", attrName:"descp" },
			{showName:"流量", attrName:"flow" },
			{showName:"安装地点", attrName:"installationSite" },
			{showName:"IP地址", attrName:"ip" },
			{showName:"所属厂家", attrName:"manufacturersId" },
			{showName:"端口号", attrName:"portNumber" },
			{showName:"所属项目", attrName:"projectId" },
			{showName:"投运时间", attrName:"runTime" },
			//{showName:"业务主键", attrName:"threeLayerSwitchId" },
			{showName:"型号规格", attrName:"typeSpecification" },
			{showName:"备注/其他", attrName:"vlanDescp" },
			{showName:"VLAN ID", attrName:"vlanId"}
		);
		
		public static var L2SWITCH_ATTR_NAME:Array = new Array(
			{showName:"设备名称", attrName:"twoLayerSwitchName" },
			{showName:"所属站点", attrName:"siteId" },
			{showName:"所属子网", attrName:"subNetwork" },
			{showName:"所属项目", attrName:"projectId" },
			{showName:"所属厂商", attrName:"manufacturersId" },
			{showName:"施工单位", attrName:"constructionUnitId" },
			{showName:"调试情况", attrName:"debugging" },
			{showName:"是否有效", attrName:"delFlg" },
			{showName:"备注", attrName:"descp" },
			{showName:"流量", attrName:"flow" },
			{showName:"安装地点", attrName:"installationSite" },
			{showName:"所属业务", attrName:"ownedBusiness" },
			{showName:"端口号", attrName:"portNumber" },
			{showName:"投运时间", attrName:"runTime" },
			{showName:"设备类型", attrName:"switchType" },
			{showName:"终端名称", attrName:"terminalName" },
			{showName:"VLAN ID", attrName:"VLANID" },
			//{showName:"业务主键", attrName:"twoLayerSwitchId" },
			{showName:"型号规格", attrName:"typeSpecification" },
			{showName:"VLAN备注", attrName:"vlanDescp"}
		);
		
		public static var CABLE_ATTR_NAME:Array = new Array(
			//{showName:"业务主键", attrName:"cableId" },
			{showName:"光缆名称", attrName:"cableName" },
			{showName:"光缆起点", attrName:"cableStartId" },
			{showName:"光缆终点", attrName:"cableEndId" },
			{showName:"施工单位", attrName:"constructionUnitId" },
			{showName:"光缆类型", attrName:"cableType" },
			{showName:"光缆长度", attrName:"cableLength" },
			{showName:"是否有效", attrName:"delFlg" },
			{showName:"纤芯数量", attrName:"fiberId" },
			{showName:"是否主干网", attrName:"isMainRoad" },
			{showName:"敷设类型", attrName:"layingType" },
			{showName:"投运时间", attrName:"runTime"},
			{showName:"备注", attrName:"descp" }
		);
		
		public function EquipJsonUtils()
		{
		}
		
		public static function typeArray(type:String):Array{
			if(type.match(EquipJsonUtils.OLT_TYPE_REGEXP)){
				return OLT_ATTR_NAME;
			}else if(type.match(EquipJsonUtils.CARRIER_TYPE_REGEXP)){
				return CARRIER_ATTR_NAME;
			}else if(type.match(EquipJsonUtils.ONU_TYPE_REGEXP)){
				return ONU_ATTR_NAME;
			}else if(type.match(EquipJsonUtils.LAYER_3_TYPE_SWITCH_REGEXP)){
				return L3SWITCH_ATTR_NAME;
			}else if(type.match(EquipJsonUtils.LAYER_2_TYPE_SWITCH_REGEXP)){
				return L2SWITCH_ATTR_NAME;
			}else if(type.match(EquipJsonUtils.GPRS_TYPE_REGEXP)){
				return GPRS_ATTR_NAME;
			}else if(type.match(EquipJsonUtils.CABLE_TYPE_REGEXP)){
				return CABLE_ATTR_NAME;
			}else{
				return null;
			}
		}
	}
}