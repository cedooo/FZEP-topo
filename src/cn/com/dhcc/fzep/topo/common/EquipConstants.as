package cn.com.dhcc.fzep.topo.common
{
	public class EquipConstants
	{
		public function EquipConstants()
		{
		}
		/**
		 * 设备类型
		 */
		public static var EQUIP_TYPE_TwoLayerSwitch:String = "class cn.com.dhcc.fzep.topo.pojo.TwoLayerSwitch";
		public static var EQUIP_TYPE_ThreeLayerSwitch:String = "class cn.com.dhcc.fzep.topo.pojo.ThreeLayerSwitch";
		public static var EQUIP_TYPE_Cable:String = "class cn.com.dhcc.fzep.topo.pojo.Cable";
		public static var EQUIP_TYPE_Carrier:String = "class cn.com.dhcc.fzep.topo.pojo.Carrier";
		public static var EQUIP_TYPE_GPRS:String = "class cn.com.dhcc.fzep.topo.pojo.GPRS";
		public static var EQUIP_TYPE_OLT:String = "class cn.com.dhcc.fzep.topo.pojo.OLT";
		public static var EQUIP_TYPE_ONU:String =  "class cn.com.dhcc.fzep.topo.pojo.ONU";
		/**
		 * 设备是否启动
		 */
		public static var EQUIP_DEL_FLAG_USED:String = "启用";
		public static var EQUIP_DEL_FLAG_STOP:String = "停用";
		/**
		 * 设备是否启用
		 */
		public static var EQUIP_IS_USED:String = "是";
		/**
		 * 主干光缆
		 */
		public static var CABLE_IS_MAIN:String = "是";
		
		
		/** 连接设备类型 */
		public static var  TYPE_CONNECTION_GPRS:String = "gprs";
		public static var  TYPE_CONNECTION_OLT:String = "olt";
		public static var  TYPE_CONNECTION_ONU:String = "onu";
		public static var  TYPE_CONNECTION_CARRIER:String = "载波";
		public static var  TYPE_CONNECTION_TWOLAYERSWITCH:String = "二层交换机";
		public static var  TYPE_CONNECTION_THREELAYERSWITCH:String = "三层交换机";
	}
}