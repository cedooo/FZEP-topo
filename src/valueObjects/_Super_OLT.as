/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - OLT.as.
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
public class _Super_OLT extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.pojo.OLT") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.OLT", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.OLT", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _OLTEntityMetadata;
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
    private var _internal_manufacturers : String;
    private var _internal_installationSite : String;
    private var _internal_runTime : String;
    private var _internal_projectId : String;
    private var _internal_vlanId : String;
    private var _internal_vpnNumber : String;
    private var _internal_oSPFNumber : String;
    private var _internal_oltName : String;
    private var _internal_descp : String;
    private var _internal_typeSpecification : String;
    private var _internal_lookbackLocation : String;
    private var _internal_showName : String;
    private var _internal_siteId : String;
    private var _internal_oltId : String;
    private var _internal_delFlg : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_OLT()
    {
        _model = new _OLTEntityMetadata(this);

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
    public function get projectId() : String
    {
        return _internal_projectId;
    }

    [Bindable(event="propertyChange")]
    public function get vlanId() : String
    {
        return _internal_vlanId;
    }

    [Bindable(event="propertyChange")]
    public function get vpnNumber() : String
    {
        return _internal_vpnNumber;
    }

    [Bindable(event="propertyChange")]
    public function get oSPFNumber() : String
    {
        return _internal_oSPFNumber;
    }

    [Bindable(event="propertyChange")]
    public function get oltName() : String
    {
        return _internal_oltName;
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
    public function get lookbackLocation() : String
    {
        return _internal_lookbackLocation;
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
    public function get oltId() : String
    {
        return _internal_oltId;
    }

    [Bindable(event="propertyChange")]
    public function get delFlg() : String
    {
        return _internal_delFlg;
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

    public function set projectId(value:String) : void
    {
        var oldValue:String = _internal_projectId;
        if (oldValue !== value)
        {
            _internal_projectId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "projectId", oldValue, _internal_projectId));
        }
    }

    public function set vlanId(value:String) : void
    {
        var oldValue:String = _internal_vlanId;
        if (oldValue !== value)
        {
            _internal_vlanId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vlanId", oldValue, _internal_vlanId));
        }
    }

    public function set vpnNumber(value:String) : void
    {
        var oldValue:String = _internal_vpnNumber;
        if (oldValue !== value)
        {
            _internal_vpnNumber = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "vpnNumber", oldValue, _internal_vpnNumber));
        }
    }

    public function set oSPFNumber(value:String) : void
    {
        var oldValue:String = _internal_oSPFNumber;
        if (oldValue !== value)
        {
            _internal_oSPFNumber = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oSPFNumber", oldValue, _internal_oSPFNumber));
        }
    }

    public function set oltName(value:String) : void
    {
        var oldValue:String = _internal_oltName;
        if (oldValue !== value)
        {
            _internal_oltName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oltName", oldValue, _internal_oltName));
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

    public function set lookbackLocation(value:String) : void
    {
        var oldValue:String = _internal_lookbackLocation;
        if (oldValue !== value)
        {
            _internal_lookbackLocation = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lookbackLocation", oldValue, _internal_lookbackLocation));
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

    public function set oltId(value:String) : void
    {
        var oldValue:String = _internal_oltId;
        if (oldValue !== value)
        {
            _internal_oltId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oltId", oldValue, _internal_oltId));
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
    public function get _model() : _OLTEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _OLTEntityMetadata) : void
    {
        var oldValue : _OLTEntityMetadata = model_internal::_dminternal_model;
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
