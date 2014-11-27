/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TwoLayerSwitch.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_TwoLayerSwitch extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.pojo.TwoLayerSwitch") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.TwoLayerSwitch", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.TwoLayerSwitch", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _TwoLayerSwitchEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_terminalName : String;
    private var _internal_portNumber : String;
    private var _internal_constructionUnit : String;
    private var _internal_manufacturers : String;
    private var _internal_installationSite : String;
    private var _internal_switchName : String;
    private var _internal_runTime : String;
    private var _internal_flow : String;
    private var _internal_projectId : String;
    private var _internal_VLANID : String;
    private var _internal_ownedBusiness : String;
    private var _internal_switchId : String;
    private var _internal_vlanDescp : String;
    private var _internal_switchType : String;
    private var _internal_descp : String;
    private var _internal_subNetwork : String;
    private var _internal_typeSpecification : String;
    private var _internal_showName : String;
    private var _internal_siteId : String;
    private var _internal_delFlg : String;
    private var _internal_debugging : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TwoLayerSwitch()
    {
        _model = new _TwoLayerSwitchEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get terminalName() : String
    {
        return _internal_terminalName;
    }

    [Bindable(event="propertyChange")]
    public function get portNumber() : String
    {
        return _internal_portNumber;
    }

    [Bindable(event="propertyChange")]
    public function get constructionUnit() : String
    {
        return _internal_constructionUnit;
    }

    [Bindable(event="propertyChange")]
    public function get manufacturers() : String
    {
        return _internal_manufacturers;
    }

    [Bindable(event="propertyChange")]
    public function get installationSite() : String
    {
        return _internal_installationSite;
    }

    [Bindable(event="propertyChange")]
    public function get switchName() : String
    {
        return _internal_switchName;
    }

    [Bindable(event="propertyChange")]
    public function get runTime() : String
    {
        return _internal_runTime;
    }

    [Bindable(event="propertyChange")]
    public function get flow() : String
    {
        return _internal_flow;
    }

    [Bindable(event="propertyChange")]
    public function get projectId() : String
    {
        return _internal_projectId;
    }

    [Bindable(event="propertyChange")]
    public function get VLANID() : String
    {
        return _internal_VLANID;
    }

    [Bindable(event="propertyChange")]
    public function get ownedBusiness() : String
    {
        return _internal_ownedBusiness;
    }

    [Bindable(event="propertyChange")]
    public function get switchId() : String
    {
        return _internal_switchId;
    }

    [Bindable(event="propertyChange")]
    public function get vlanDescp() : String
    {
        return _internal_vlanDescp;
    }

    [Bindable(event="propertyChange")]
    public function get switchType() : String
    {
        return _internal_switchType;
    }

    [Bindable(event="propertyChange")]
    public function get descp() : String
    {
        return _internal_descp;
    }

    [Bindable(event="propertyChange")]
    public function get subNetwork() : String
    {
        return _internal_subNetwork;
    }

    [Bindable(event="propertyChange")]
    public function get typeSpecification() : String
    {
        return _internal_typeSpecification;
    }

    [Bindable(event="propertyChange")]
    public function get showName() : String
    {
        return _internal_showName;
    }

    [Bindable(event="propertyChange")]
    public function get siteId() : String
    {
        return _internal_siteId;
    }

    [Bindable(event="propertyChange")]
    public function get delFlg() : String
    {
        return _internal_delFlg;
    }

    [Bindable(event="propertyChange")]
    public function get debugging() : String
    {
        return _internal_debugging;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set terminalName(value:String) : void
    {
        var oldValue:String = _internal_terminalName;
        if (oldValue !== value)
        {
            _internal_terminalName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "terminalName", oldValue, _internal_terminalName));
        }
    }

    public function set portNumber(value:String) : void
    {
        var oldValue:String = _internal_portNumber;
        if (oldValue !== value)
        {
            _internal_portNumber = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "portNumber", oldValue, _internal_portNumber));
        }
    }

    public function set constructionUnit(value:String) : void
    {
        var oldValue:String = _internal_constructionUnit;
        if (oldValue !== value)
        {
            _internal_constructionUnit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "constructionUnit", oldValue, _internal_constructionUnit));
        }
    }

    public function set manufacturers(value:String) : void
    {
        var oldValue:String = _internal_manufacturers;
        if (oldValue !== value)
        {
            _internal_manufacturers = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "manufacturers", oldValue, _internal_manufacturers));
        }
    }

    public function set installationSite(value:String) : void
    {
        var oldValue:String = _internal_installationSite;
        if (oldValue !== value)
        {
            _internal_installationSite = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "installationSite", oldValue, _internal_installationSite));
        }
    }

    public function set switchName(value:String) : void
    {
        var oldValue:String = _internal_switchName;
        if (oldValue !== value)
        {
            _internal_switchName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "switchName", oldValue, _internal_switchName));
        }
    }

    public function set runTime(value:String) : void
    {
        var oldValue:String = _internal_runTime;
        if (oldValue !== value)
        {
            _internal_runTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "runTime", oldValue, _internal_runTime));
        }
    }

    public function set flow(value:String) : void
    {
        var oldValue:String = _internal_flow;
        if (oldValue !== value)
        {
            _internal_flow = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "flow", oldValue, _internal_flow));
        }
    }

    public function set projectId(value:String) : void
    {
        var oldValue:String = _internal_projectId;
        if (oldValue !== value)
        {
            _internal_projectId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "projectId", oldValue, _internal_projectId));
        }
    }

    public function set VLANID(value:String) : void
    {
        var oldValue:String = _internal_VLANID;
        if (oldValue !== value)
        {
            _internal_VLANID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "VLANID", oldValue, _internal_VLANID));
        }
    }

    public function set ownedBusiness(value:String) : void
    {
        var oldValue:String = _internal_ownedBusiness;
        if (oldValue !== value)
        {
            _internal_ownedBusiness = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ownedBusiness", oldValue, _internal_ownedBusiness));
        }
    }

    public function set switchId(value:String) : void
    {
        var oldValue:String = _internal_switchId;
        if (oldValue !== value)
        {
            _internal_switchId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "switchId", oldValue, _internal_switchId));
        }
    }

    public function set vlanDescp(value:String) : void
    {
        var oldValue:String = _internal_vlanDescp;
        if (oldValue !== value)
        {
            _internal_vlanDescp = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vlanDescp", oldValue, _internal_vlanDescp));
        }
    }

    public function set switchType(value:String) : void
    {
        var oldValue:String = _internal_switchType;
        if (oldValue !== value)
        {
            _internal_switchType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "switchType", oldValue, _internal_switchType));
        }
    }

    public function set descp(value:String) : void
    {
        var oldValue:String = _internal_descp;
        if (oldValue !== value)
        {
            _internal_descp = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descp", oldValue, _internal_descp));
        }
    }

    public function set subNetwork(value:String) : void
    {
        var oldValue:String = _internal_subNetwork;
        if (oldValue !== value)
        {
            _internal_subNetwork = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "subNetwork", oldValue, _internal_subNetwork));
        }
    }

    public function set typeSpecification(value:String) : void
    {
        var oldValue:String = _internal_typeSpecification;
        if (oldValue !== value)
        {
            _internal_typeSpecification = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "typeSpecification", oldValue, _internal_typeSpecification));
        }
    }

    public function set showName(value:String) : void
    {
        var oldValue:String = _internal_showName;
        if (oldValue !== value)
        {
            _internal_showName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showName", oldValue, _internal_showName));
        }
    }

    public function set siteId(value:String) : void
    {
        var oldValue:String = _internal_siteId;
        if (oldValue !== value)
        {
            _internal_siteId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "siteId", oldValue, _internal_siteId));
        }
    }

    public function set delFlg(value:String) : void
    {
        var oldValue:String = _internal_delFlg;
        if (oldValue !== value)
        {
            _internal_delFlg = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "delFlg", oldValue, _internal_delFlg));
        }
    }

    public function set debugging(value:String) : void
    {
        var oldValue:String = _internal_debugging;
        if (oldValue !== value)
        {
            _internal_debugging = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "debugging", oldValue, _internal_debugging));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _TwoLayerSwitchEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TwoLayerSwitchEntityMetadata) : void
    {
        var oldValue : _TwoLayerSwitchEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }


}

}
