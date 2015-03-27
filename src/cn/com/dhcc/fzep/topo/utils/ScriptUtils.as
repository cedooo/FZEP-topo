package cn.com.dhcc.fzep.topo.utils
{
	import flash.external.ExternalInterface;

	public class ScriptUtils
	{
		public function ScriptUtils()
		{
		}
		/**
		 * 得到项目根目录
		 */
		public static function getRoot(url:String):String{
			if(url.match(/.*:\d+\/.*/)){
				var reg:RegExp = /(\/+)/;
				var regR:Array = url.split(reg);
				var basePath:String = regR[0] + regR[1] + regR[2] + regR[3] + regR[4] + regR[5];
				return basePath;
			}else {
				return "./";
			}
		}
		/**
		 * 打开弹出窗口
		 */
		public static function openPopupWindow(pageUrl:String,pageName:String):void{ 
			var jsString:String=""; 
			jsString+=" var screenWidth = screen.availWidth, screenHeight = screen.availHeight;"; 
			jsString+=" var args = 'toolbar=no, menubar=no,channelmode=yes, scrollbars=no,resizable=yes,location=yes, status=no';";        
			//打开全屏的新窗口 
			jsString+=" var win = window.open('"+pageUrl+"','"+pageName+"',args);"; 
			jsString+=" if(win){"; 
			jsString+="    win.resizeTo(screenWidth*0.85,screenHeight*0.85);"; 
			jsString+="    win.outerWidth = screenWidth;"; 
			jsString+="    win.outerHeight = screenHeight;"; 
			jsString+="    win.moveTo(screenWidth*0.075,screenHeight*0.075);"; 
			jsString+=" }"; 
			ExternalInterface.call("function(){"+jsString+"}"); 
		} 
		/**
		 * 打开新的标签页
		 */
		public static function openTabWindow(pageUrl:String,pageName:String):void{ 
			var jsString:String=""; 
			jsString+=" var screenWidth = screen.availWidth, screenHeight = screen.availHeight;"; 
			//jsString+=" var args = 'toolbar=no, menubar=no,channelmode=yes, scrollbars=no,resizable=yes,location=yes, status=no';";        
			//打开全屏的新窗口 
			jsString+=" var win = window.open('"+pageUrl+"','"+pageName+"');"; 
			//jsString+=" if(win){"; 
			//jsString+="    win.resizeTo(screenWidth*0.85,screenHeight*0.85);"; 
			//jsString+="    win.outerWidth = screenWidth;"; 
			//jsString+="    win.outerHeight = screenHeight;"; 
			//jsString+="    win.moveTo(screenWidth*0.075,screenHeight*0.075);"; 
			//jsString+=" }"; 
			ExternalInterface.call("function(){"+jsString+"}"); 
		} 
	}
}