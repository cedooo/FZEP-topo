/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - AlarmDetail.as.
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
public class _Super_AlarmDetail extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.alarm.data.ustc.AlarmDetail") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.alarm.data.ustc.AlarmDetail", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.alarm.data.ustc.AlarmDetail", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _AlarmDetailEntityMetadata;
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
    private var _internal_alarmContent : String;
    private var _internal_devId : String;
    private var _internal_alarmLocation : String;
    private var _internal_alarmTime : String;
    private var _internal_alarmId : String;
    private var _internal_alarmLevel : String;
    private var _internal_state : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_AlarmDetail()
    {
        _model = new _AlarmDetailEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get alarmContent() : String
    {
        return _internal_alarmContent;
    }

    [Bindable(event="propertyChange")]
    public function get devId() : String
    {
        return _internal_devId;
    }

    [Bindable(event="propertyChange")]
    public function get alarmLocation() : String
    {
        return _internal_alarmLocation;
    }

    [Bindable(event="propertyChange")]
    public function get alarmTime() : String
    {
        return _internal_alarmTime;
    }

    [Bindable(event="propertyChange")]
    public function get alarmId() : String
    {
        return _internal_alarmId;
    }

    [Bindable(event="propertyChange")]
    public function get alarmLevel() : String
    {
        return _internal_alarmLevel;
    }

    [Bindable(event="propertyChange")]
    public function get state() : String
    {
        return _internal_state;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set alarmContent(value:String) : void
    {
        var oldValue:String = _internal_alarmContent;
        if (oldValue !== value)
        {
            _internal_alarmContent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alarmContent", oldValue, _internal_alarmContent));
        }
    }

    public function set devId(value:String) : void
    {
        var oldValue:String = _internal_devId;
        if (oldValue !== value)
        {
            _internal_devId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "devId", oldValue, _internal_devId));
        }
    }

    public function set alarmLocation(value:String) : void
    {
        var oldValue:String = _internal_alarmLocation;
        if (oldValue !== value)
        {
            _internal_alarmLocation = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alarmLocation", oldValue, _internal_alarmLocation));
        }
    }

    public function set alarmTime(value:String) : void
    {
        var oldValue:String = _internal_alarmTime;
        if (oldValue !== value)
        {
            _internal_alarmTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alarmTime", oldValue, _internal_alarmTime));
        }
    }

    public function set alarmId(value:String) : void
    {
        var oldValue:String = _internal_alarmId;
        if (oldValue !== value)
        {
            _internal_alarmId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alarmId", oldValue, _internal_alarmId));
        }
    }

    public function set alarmLevel(value:String) : void
    {
        var oldValue:String = _internal_alarmLevel;
        if (oldValue !== value)
        {
            _internal_alarmLevel = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alarmLevel", oldValue, _internal_alarmLevel));
        }
    }

    public function set state(value:String) : void
    {
        var oldValue:String = _internal_state;
        if (oldValue !== value)
        {
            _internal_state = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "state", oldValue, _internal_state));
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
    public function get _model() : _AlarmDetailEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _AlarmDetailEntityMetadata) : void
    {
        var oldValue : _AlarmDetailEntityMetadata = model_internal::_dminternal_model;
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
