/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - GPRS.as.
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
public class _Super_GPRS extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.pojo.GPRS") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.GPRS", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.GPRS", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _GPRSEntityMetadata;
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
    private var _internal_constructionUnit : String;
    private var _internal_gprsId : String;
    private var _internal_technologyType : String;
    private var _internal_manufacturers : String;
    private var _internal_installationSite : String;
    private var _internal_runTime : String;
    private var _internal_gprsName : String;
    private var _internal_projectId : String;
    private var _internal_pperators : String;
    private var _internal_ip : String;
    private var _internal_descp : String;
    private var _internal_typeSpecification : String;
    private var _internal_showName : String;
    private var _internal_siteId : String;
    private var _internal_delFlg : String;
    private var _internal_debugging : String;
    private var _internal_cardNumber : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_GPRS()
    {
        _model = new _GPRSEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get constructionUnit() : String
    {
        return _internal_constructionUnit;
    }

    [Bindable(event="propertyChange")]
    public function get gprsId() : String
    {
        return _internal_gprsId;
    }

    [Bindable(event="propertyChange")]
    public function get technologyType() : String
    {
        return _internal_technologyType;
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
    public function get runTime() : String
    {
        return _internal_runTime;
    }

    [Bindable(event="propertyChange")]
    public function get gprsName() : String
    {
        return _internal_gprsName;
    }

    [Bindable(event="propertyChange")]
    public function get projectId() : String
    {
        return _internal_projectId;
    }

    [Bindable(event="propertyChange")]
    public function get pperators() : String
    {
        return _internal_pperators;
    }

    [Bindable(event="propertyChange")]
    public function get ip() : String
    {
        return _internal_ip;
    }

    [Bindable(event="propertyChange")]
    public function get descp() : String
    {
        return _internal_descp;
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

    [Bindable(event="propertyChange")]
    public function get cardNumber() : String
    {
        return _internal_cardNumber;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set constructionUnit(value:String) : void
    {
        var oldValue:String = _internal_constructionUnit;
        if (oldValue !== value)
        {
            _internal_constructionUnit = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "constructionUnit", oldValue, _internal_constructionUnit));
        }
    }

    public function set gprsId(value:String) : void
    {
        var oldValue:String = _internal_gprsId;
        if (oldValue !== value)
        {
            _internal_gprsId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gprsId", oldValue, _internal_gprsId));
        }
    }

    public function set technologyType(value:String) : void
    {
        var oldValue:String = _internal_technologyType;
        if (oldValue !== value)
        {
            _internal_technologyType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "technologyType", oldValue, _internal_technologyType));
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

    public function set runTime(value:String) : void
    {
        var oldValue:String = _internal_runTime;
        if (oldValue !== value)
        {
            _internal_runTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "runTime", oldValue, _internal_runTime));
        }
    }

    public function set gprsName(value:String) : void
    {
        var oldValue:String = _internal_gprsName;
        if (oldValue !== value)
        {
            _internal_gprsName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "gprsName", oldValue, _internal_gprsName));
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

    public function set pperators(value:String) : void
    {
        var oldValue:String = _internal_pperators;
        if (oldValue !== value)
        {
            _internal_pperators = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pperators", oldValue, _internal_pperators));
        }
    }

    public function set ip(value:String) : void
    {
        var oldValue:String = _internal_ip;
        if (oldValue !== value)
        {
            _internal_ip = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ip", oldValue, _internal_ip));
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

    public function set cardNumber(value:String) : void
    {
        var oldValue:String = _internal_cardNumber;
        if (oldValue !== value)
        {
            _internal_cardNumber = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cardNumber", oldValue, _internal_cardNumber));
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
    public function get _model() : _GPRSEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _GPRSEntityMetadata) : void
    {
        var oldValue : _GPRSEntityMetadata = model_internal::_dminternal_model;
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
