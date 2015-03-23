package test
{
	public class ForTest
	{
		public var outStr:String = "";
		public var outStr2:String = "";
		public function ForTest()
		{
			var list:Array = new Array();
			list.push("a1");
			list.push("a2");
			list.push("a3");
			for each (var i:String in list) 
			{
				outStr += ",i=" + i;
			}
			for (var j:int = 0; j < list.length; j++) 
			{
				outStr2 += ",j=" + j + " : " + list[j];
			}
			
		}
	}
}