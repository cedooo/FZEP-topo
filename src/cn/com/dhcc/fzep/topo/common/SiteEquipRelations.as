package cn.com.dhcc.fzep.topo.common
{
	import mx.graphics.IStroke;
	import mx.graphics.SolidColorStroke;
	
	import spark.components.BorderContainer;
	import spark.layouts.HorizontalLayout;
	import spark.layouts.VerticalLayout;
	
	import cn.com.dhcc.fzep.topo.components.assets.SiteContainer;
	
	import valueObjects.Cable;
	import valueObjects.Site;

	/**
	 * 资产关系
	 */
	public class SiteEquipRelations
	{
		private var _containerP:BorderContainer;    //父容器
		private var _container:BorderContainer;    //资产关系容器
		
		
		private var _firstContainer:BorderContainer;
		private var _secondContainer:BorderContainer;
		private var _thirdContainer:BorderContainer;
		private var _forthContainer:BorderContainer;
		public function SiteEquipRelations(containerRoot:BorderContainer)
		{
			initContainer(containerRoot);
			
			var site:Site = new Site();
			site.siteName = "台江站点A1";
			site.siteId = "2";
			
			var cableList:Array = new Array();
			var cable:Cable = new Cable();
			cable.cableName = "光缆1";
			cableList.push(cable);
			
			var siteS:SiteContainer = new SiteContainer();
			siteS.site = site;
			siteS.cableList = cableList;
			_secondContainer.addElement(siteS);
			_secondContainer.id = site.siteId;
			
			
			
			
			var site3:Site = new Site();
			site3.siteName = "台江站点A3";
			site3.siteId = "3";
			var siteS3:SiteContainer = new SiteContainer();
			siteS3.site = site3;
			_thirdContainer.addElement(siteS3);
			_thirdContainer.id = site3.siteId;
		}
		
		private function initContainer(containerRoot:BorderContainer):void{
			_containerP = containerRoot;
			_container = new BorderContainer();
			_container.percentHeight = 100;
			_container.percentWidth = 100;
			var conLayout:HorizontalLayout = new HorizontalLayout();
			conLayout.paddingBottom = 10;
			conLayout.paddingLeft = 10;
			conLayout.paddingRight = 10;
			conLayout.paddingTop = 10;
			_container.layout = conLayout;
			
			_container.setStyle("borderVisible","false");
			var border:IStroke = new SolidColorStroke();
			border.weight = 0;
			_container.borderStroke = border;
			
			_firstContainer = generateContainer();
			_container.addElement(_firstContainer);
			
			_secondContainer = generateContainer();
			_container.addElement(_secondContainer);
			
			_thirdContainer = generateContainer();
			_container.addElement(_thirdContainer);
			
			_forthContainer = generateContainer();
			_container.addElement(_forthContainer);
			
			_containerP.addElement(_container);
		}
		/**
		 * 工厂方法
		 */
		private function generateContainer():BorderContainer{
			var newContainer:BorderContainer = new BorderContainer();
			newContainer.percentHeight = 100;
			newContainer.percentWidth = 25;
			newContainer.layout = new VerticalLayout();
			newContainer.setStyle("cornerRadius","10");
			newContainer.setStyle("borderVisible","false");
			var border:IStroke = new SolidColorStroke();
			border.weight = 0;
			newContainer.borderStroke = border;
			return newContainer;
		}
		public function search(cable:Cable):void{
			
		}
	}
}