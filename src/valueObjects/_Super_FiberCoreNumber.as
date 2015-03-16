/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - FiberCoreNumber.as.
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
public class _Super_FiberCoreNumber extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.pojo.FiberCoreNumber") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.FiberCoreNumber", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.FiberCoreNumber", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _FiberCoreNumberEntityMetadata;
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
    private var _internal_transceiver : String;
    private var _internal_cableId : String;
    private var _internal_descp : String;
    private var _internal_isUsed : String;
    private var _internal_fiberCoreNumberName : String;
    private var _internal_isJump : String;
    private var _internal_delFlg : String;
    private var _internal_bizType : String;
    private var _internal_fiberCoreNumberId : String;
    private var _internal_connections : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_FiberCoreNumber()
    {
        _model = new _FiberCoreNumberEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get transceiver() : String
    {
        return _internal_transceiver;
    }

    [Bindable(event="propertyChange")]
    public function get cableId() : String
    {
        return _internal_cableId;
    }

    [Bindable(event="propertyChange")]
    public function get descp() : String
    {
        return _internal_descp;
    }

    [Bindable(event="propertyChange")]
    public function get isUsed() : String
    {
        return _internal_isUsed;
    }

    [Bindable(event="propertyChange")]
    public function get fiberCoreNumberName() : String
    {
        return _internal_fiberCoreNumberName;
    }

    [Bindable(event="propertyChange")]
    public function get isJump() : String
    {
        return _internal_isJump;
    }

    [Bindable(event="propertyChange")]
    public function get delFlg() : String
    {
        return _internal_delFlg;
    }

    [Bindable(event="propertyChange")]
    public function get bizType() : String
    {
        return _internal_bizType;
    }

    [Bindable(event="propertyChange")]
    public function get fiberCoreNumberId() : String
    {
        return _internal_fiberCoreNumberId;
    }

    [Bindable(event="propertyChange")]
    public function get connections() : String
    {
        return _internal_connections;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set transceiver(value:String) : void
    {
        var oldValue:String = _internal_transceiver;
        if (oldValue !== value)
        {
            _internal_transceiver = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "transceiver", oldValue, _internal_transceiver));
        }
    }

    public function set cableId(value:String) : void
    {
        var oldValue:String = _internal_cableId;
        if (oldValue !== value)
        {
            _internal_cableId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cableId", oldValue, _internal_cableId));
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

    public function set isUsed(value:String) : void
    {
        var oldValue:String = _internal_isUsed;
        if (oldValue !== value)
        {
            _internal_isUsed = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isUsed", oldValue, _internal_isUsed));
        }
    }

    public function set fiberCoreNumberName(value:String) : void
    {
        var oldValue:String = _internal_fiberCoreNumberName;
        if (oldValue !== value)
        {
            _internal_fiberCoreNumberName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fiberCoreNumberName", oldValue, _internal_fiberCoreNumberName));
        }
    }

    public function set isJump(value:String) : void
    {
        var oldValue:String = _internal_isJump;
        if (oldValue !== value)
        {
            _internal_isJump = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isJump", oldValue, _internal_isJump));
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

    public function set bizType(value:String) : void
    {
        var oldValue:String = _internal_bizType;
        if (oldValue !== value)
        {
            _internal_bizType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bizType", oldValue, _internal_bizType));
        }
    }

    public function set fiberCoreNumberId(value:String) : void
    {
        var oldValue:String = _internal_fiberCoreNumberId;
        if (oldValue !== value)
        {
            _internal_fiberCoreNumberId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fiberCoreNumberId", oldValue, _internal_fiberCoreNumberId));
        }
    }

    public function set connections(value:String) : void
    {
        var oldValue:String = _internal_connections;
        if (oldValue !== value)
        {
            _internal_connections = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "connections", oldValue, _internal_connections));
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
    public function get _model() : _FiberCoreNumberEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _FiberCoreNumberEntityMetadata) : void
    {
        var oldValue : _FiberCoreNumberEntityMetadata = model_internal::_dminternal_model;
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
