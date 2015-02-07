package cn.com.dhcc.fzep.topo.xtreme
{
	import flash.geom.Point;
	
	import xtreme.scene.entity.shapes.DynamicConnector;

	/**
	 * 鼠标双击事件
	 */
	[Event(name=MouseEvent.DOUBLE_CLICK, type="flash.events.MouseEvent")]
	/**
	 * 对原来引擎DynamicConnector扩展， 
	 * <ol>
	 * <li>添加鼠标双击事件</li>
	 * <li>添加显示文字</li>
	 * </ol>
	 */
	public class CustomDynamicConnector extends DynamicConnector
	{
		public function CustomDynamicConnector(name:String, beginning:Point=null, end:Point=null, lineThickness:uint=1)
		{
			super(name, beginning, end, lineThickness);
		}
	}
}