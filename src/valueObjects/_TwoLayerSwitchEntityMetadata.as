
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _TwoLayerSwitchEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("constructionUnit", "manufacturers", "switchName", "switchId", "showName", "terminalName", "portNumber", "constructionUnitId", "twoLayerSwitchName", "installationSite", "runTime", "VLANID", "flow", "projectId", "ownedBusiness", "twoLayerSwitchId", "vlanDescp", "switchType", "subNetwork", "descp", "typeSpecification", "siteId", "delFlg", "debugging", "manufacturersId");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array();
    model_internal static var allAlwaysAvailableProperties:Array = new Array("constructionUnit", "manufacturers", "switchName", "switchId", "showName", "terminalName", "portNumber", "constructionUnitId", "twoLayerSwitchName", "installationSite", "runTime", "VLANID", "flow", "projectId", "ownedBusiness", "twoLayerSwitchId", "vlanDescp", "switchType", "subNetwork", "descp", "typeSpecification", "siteId", "delFlg", "debugging", "manufacturersId");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("constructionUnit", "manufacturers", "switchName", "switchId", "showName", "terminalName", "portNumber", "constructionUnitId", "twoLayerSwitchName", "installationSite", "runTime", "VLANID", "flow", "projectId", "ownedBusiness", "twoLayerSwitchId", "vlanDescp", "switchType", "subNetwork", "descp", "typeSpecification", "siteId", "delFlg", "debugging", "manufacturersId");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("constructionUnit", "manufacturers", "switchName", "switchId", "showName", "terminalName", "portNumber", "constructionUnitId", "twoLayerSwitchName", "installationSite", "runTime", "VLANID", "flow", "projectId", "ownedBusiness", "twoLayerSwitchId", "vlanDescp", "switchType", "subNetwork", "descp", "typeSpecification", "siteId", "delFlg", "debugging", "manufacturersId");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "TwoLayerSwitch";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_TwoLayerSwitch;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _TwoLayerSwitchEntityMetadata(value : _Super_TwoLayerSwitch)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["constructionUnit"] = new Array();
            model_internal::dependentsOnMap["manufacturers"] = new Array();
            model_internal::dependentsOnMap["switchName"] = new Array();
            model_internal::dependentsOnMap["switchId"] = new Array();
            model_internal::dependentsOnMap["showName"] = new Array();
            model_internal::dependentsOnMap["terminalName"] = new Array();
            model_internal::dependentsOnMap["portNumber"] = new Array();
            model_internal::dependentsOnMap["constructionUnitId"] = new Array();
            model_internal::dependentsOnMap["twoLayerSwitchName"] = new Array();
            model_internal::dependentsOnMap["installationSite"] = new Array();
            model_internal::dependentsOnMap["runTime"] = new Array();
            model_internal::dependentsOnMap["VLANID"] = new Array();
            model_internal::dependentsOnMap["flow"] = new Array();
            model_internal::dependentsOnMap["projectId"] = new Array();
            model_internal::dependentsOnMap["ownedBusiness"] = new Array();
            model_internal::dependentsOnMap["twoLayerSwitchId"] = new Array();
            model_internal::dependentsOnMap["vlanDescp"] = new Array();
            model_internal::dependentsOnMap["switchType"] = new Array();
            model_internal::dependentsOnMap["subNetwork"] = new Array();
            model_internal::dependentsOnMap["descp"] = new Array();
            model_internal::dependentsOnMap["typeSpecification"] = new Array();
            model_internal::dependentsOnMap["siteId"] = new Array();
            model_internal::dependentsOnMap["delFlg"] = new Array();
            model_internal::dependentsOnMap["debugging"] = new Array();
            model_internal::dependentsOnMap["manufacturersId"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["constructionUnit"] = "String";
        model_internal::propertyTypeMap["manufacturers"] = "String";
        model_internal::propertyTypeMap["switchName"] = "String";
        model_internal::propertyTypeMap["switchId"] = "String";
        model_internal::propertyTypeMap["showName"] = "String";
        model_internal::propertyTypeMap["terminalName"] = "String";
        model_internal::propertyTypeMap["portNumber"] = "String";
        model_internal::propertyTypeMap["constructionUnitId"] = "String";
        model_internal::propertyTypeMap["twoLayerSwitchName"] = "String";
        model_internal::propertyTypeMap["installationSite"] = "String";
        model_internal::propertyTypeMap["runTime"] = "String";
        model_internal::propertyTypeMap["VLANID"] = "String";
        model_internal::propertyTypeMap["flow"] = "String";
        model_internal::propertyTypeMap["projectId"] = "String";
        model_internal::propertyTypeMap["ownedBusiness"] = "String";
        model_internal::propertyTypeMap["twoLayerSwitchId"] = "String";
        model_internal::propertyTypeMap["vlanDescp"] = "String";
        model_internal::propertyTypeMap["switchType"] = "String";
        model_internal::propertyTypeMap["subNetwork"] = "String";
        model_internal::propertyTypeMap["descp"] = "String";
        model_internal::propertyTypeMap["typeSpecification"] = "String";
        model_internal::propertyTypeMap["siteId"] = "String";
        model_internal::propertyTypeMap["delFlg"] = "String";
        model_internal::propertyTypeMap["debugging"] = "String";
        model_internal::propertyTypeMap["manufacturersId"] = "String";

        model_internal::_instance = value;
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity TwoLayerSwitch");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity TwoLayerSwitch");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of TwoLayerSwitch");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity TwoLayerSwitch");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity TwoLayerSwitch");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity TwoLayerSwitch");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isConstructionUnitAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isManufacturersAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSwitchNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSwitchIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isShowNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTerminalNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isPortNumberAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConstructionUnitIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTwoLayerSwitchNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isInstallationSiteAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRunTimeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVLANIDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFlowAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isProjectIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOwnedBusinessAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTwoLayerSwitchIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isVlanDescpAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSwitchTypeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSubNetworkAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescpAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTypeSpecificationAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSiteIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDelFlgAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDebuggingAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isManufacturersIdAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get constructionUnitStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get manufacturersStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get switchNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get switchIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get showNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get terminalNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get portNumberStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get constructionUnitIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get twoLayerSwitchNameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get installationSiteStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get runTimeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get VLANIDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get flowStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get projectIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ownedBusinessStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get twoLayerSwitchIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get vlanDescpStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get switchTypeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get subNetworkStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get descpStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get typeSpecificationStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get siteIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get delFlgStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get debuggingStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get manufacturersIdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
