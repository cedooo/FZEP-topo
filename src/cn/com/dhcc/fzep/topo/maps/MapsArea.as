package cn.com.dhcc.fzep.topo.maps
{
	import flash.display.Graphics;
	
	import spark.primitives.supportClasses.FilledElement;

	public class MapsArea extends FilledElement
	{
		public function MapsArea()
		{
		}
		public var _areaName:String ;    //区域名称
		[Bindable]
		public function get areaName():String{
			return _areaName;
		}
		public function set areaName(areaName:String):void{
			_areaName = areaName;
		}
		public var _area:Array ;    //地理坐标
		[Bindable]
		public function get areas():Array
		{
			return _area;
		}
		public function set areas(areas:Array):void{
			_area = areas;
			if(_area!=null){    //确定区域边界
				var newStart:Boolean = true;
				for (var i:int = 0; i < areas.length; i++) 
				{
					var obj:Object = areas[i];
					var lng:Number = obj['lng'] as Number;
					var lat:Number = obj['lat'] as Number;
					var targetX:Number = (lng-originX)*300;
					var targetY:Number = -(lat-originY)*300;    //经度 与flex坐标系方向 相反
					//Alert.show(''+targetX + ',' + targetY)
					if(lng==-1||lat==-1){
						newStart = true;
						continue;
					}
					if(targetX>_maxX){
						_maxX = targetX;
					}
					if(targetY>_maxY){
						_maxY = targetY;
					}
					if(targetX<_minX){
						_minX = targetX;
					}
					if(targetY<_minY){
						_minY = targetY;
					}
					
				}
			}
			invalidateSize();
			invalidateDisplayList();
			invalidateParentSizeAndDisplayList();
		}
		public var _originX:Number = 0;    //地理坐标
		public var _originY:Number = 0;    //地理坐标
		[Bindable]
		public function get originX():Number
		{
			return _originX;
		}
		public function set originX(originX:Number):void{
			_originX = originX;
			invalidateSize();
			invalidateDisplayList();
			invalidateParentSizeAndDisplayList();
		}
		[Bindable]
		public function get originY():Number
		{
			return _originY;
		}
		public function set originY(originY:Number):void{
			_originY = originY;
			invalidateSize();
			invalidateDisplayList();
			invalidateParentSizeAndDisplayList();
		}
		override protected function draw( g:Graphics ):void
		{
			if(areas!=null){
				var newStart:Boolean = true;
				for (var i:int = 0; i < areas.length; i++) 
				{
					var obj:Object = areas[i];
					var lng:Number = obj['lng'] as Number;
					var lat:Number = obj['lat'] as Number;
					var targetX:Number = (lng-originX)*300;
					var targetY:Number = -(lat-originY)*300;    //经度 与flex坐标系方向 相反
					if(lng==-1||lat==-1){
						newStart = true;
						continue;
					}
					if(newStart){
						g.moveTo(targetX, targetY);
						newStart = false;
					}else{
						g.lineTo(targetX, targetY);
					}
				}
			}
		}
		/**
		 * 区域边界 坐标
		 */
		public var _maxX:Number =  Number.MIN_VALUE;
		public var _maxY:Number = Number.MIN_VALUE;
		public var _minX:Number = Number.MAX_VALUE;
		public var _minY:Number =  Number.MAX_VALUE;
		
		public function get centerX():Number{
			return (_maxX+_minX)/2;
		}
		public function get centerY():Number{
			return (_minY+_maxY)/2;
		}
		/*
		override public function get measuredWidth():Number
		{
			return _maxX;
		}
		override public function get measuredHeight():Number
		{
			return _maxY;
		}
		*/
	}
}