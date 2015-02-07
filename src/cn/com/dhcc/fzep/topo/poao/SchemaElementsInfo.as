package cn.com.dhcc.fzep.topo.poao
{
	/**
	 * 视图元素信息
	 */
	public class SchemaElementsInfo
	{
		public function SchemaElementsInfo()
		{
		}
		/**
		 * 坐标X
		 */
		public var x:int = -1;
		/**
		 * 坐标Y
		 */
		public var y:int = -1;
		/**
		 * 设备ID
		 */
		public var id:String = "";
		/**
		 * 设备类型
		 */
		public var type:String = "";
		/**
		 * 展示名称
		 */
		public var showName:String = "";
		/**
		 * 图片路径
		 */
		public var imgPath:String = "";
		/**
		 * 起点ID
		 */
		public var startId:String = "";
		/**
		 * 终点ID
		 */
		public var endId:String = "";
		/**
		 * 是不是主干
		 */
		public var isMainRoad:String = "";
	}
}