package cn.com.dhcc.fzep.topo.components
{
	
	import mx.core.IVisualElement;
	
	import spark.components.Button;
	import spark.components.HGroup;
	import spark.components.Panel;
	
	public class PanelWithStatus extends Panel
	{
		public function PanelWithStatus()
		{
			super();
		}
		
		private var btnClose:Button;
		
		[Embed("assets/status_green.png")]
		private var IconGreen:Class;
		[Embed("assets/status_gray.png")]
		private var IconGray:Class;
		
		
		[SkinPart(required="true")]  
		public var titleBar:HGroup;  
		
		private var _titleBarContent:Array;  
		
		[ArrayElementType("mx.core.IVisualElement")]  
		public function get titleBarContent():Array  
		{  
			return _titleBarContent;  
		}  
		
		public function set titleBarContent(value:Array):void  
		{  
			_titleBarContent = value;  
		}  
		
		
		//add event listeners by overriding partAdded method  
		override protected function partAdded(partName:String, instance:Object):void  
		{  
			//call super method  
			super.partAdded(partName,instance);  
			
			if(instance == titleBar)  
			{  
				for each(var obj:Object in titleBarContent)  
				{  
					titleBar.addElement(obj as IVisualElement);  
				}  
			}  
			
		}  
	}
}