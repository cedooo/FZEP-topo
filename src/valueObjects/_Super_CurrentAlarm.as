/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CurrentAlarm.as.
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
public class _Super_CurrentAlarm extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.alarm.data.ustc.vo.CurrentAlarm") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.alarm.data.ustc.vo.CurrentAlarm", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.alarm.data.ustc.vo.CurrentAlarm", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _CurrentAlarmEntityMetadata;
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
    private var _internal_id : String;
    private var _internal_dealTime : String;
    private var _internal_occurTime : String;
    private var _internal_alarmContent : String;
    private var _internal_level : String;
    private var _internal_equipName : String;
    private var _internal_currentUser : String;
    private var _internal_dealUser : String;
    private var _internal_note : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CurrentAlarm()
    {
        _model = new _CurrentAlarmEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get dealTime() : String
    {
        return _internal_dealTime;
    }

    [Bindable(event="propertyChange")]
    public function get occurTime() : String
    {
        return _internal_occurTime;
    }

    [Bindable(event="propertyChange")]
    public function get alarmContent() : String
    {
        return _internal_alarmContent;
    }

    [Bindable(event="propertyChange")]
    public function get level() : String
    {
        return _internal_level;
    }

    [Bindable(event="propertyChange")]
    public function get equipName() : String
    {
        return _internal_equipName;
    }

    [Bindable(event="propertyChange")]
    public function get currentUser() : String
    {
        return _internal_currentUser;
    }

    [Bindable(event="propertyChange")]
    public function get dealUser() : String
    {
        return _internal_dealUser;
    }

    [Bindable(event="propertyChange")]
    public function get note() : String
    {
        return _internal_note;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set dealTime(value:String) : void
    {
        var oldValue:String = _internal_dealTime;
        if (oldValue !== value)
        {
            _internal_dealTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dealTime", oldValue, _internal_dealTime));
        }
    }

    public function set occurTime(value:String) : void
    {
        var oldValue:String = _internal_occurTime;
        if (oldValue !== value)
        {
            _internal_occurTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "occurTime", oldValue, _internal_occurTime));
        }
    }

    public function set alarmContent(value:String) : void
    {
        var oldValue:String = _internal_alarmContent;
        if (oldValue !== value)
        {
            _internal_alarmContent = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alarmContent", oldValue, _internal_alarmContent));
        }
    }

    public function set level(value:String) : void
    {
        var oldValue:String = _internal_level;
        if (oldValue !== value)
        {
            _internal_level = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "level", oldValue, _internal_level));
        }
    }

    public function set equipName(value:String) : void
    {
        var oldValue:String = _internal_equipName;
        if (oldValue !== value)
        {
            _internal_equipName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "equipName", oldValue, _internal_equipName));
        }
    }

    public function set currentUser(value:String) : void
    {
        var oldValue:String = _internal_currentUser;
        if (oldValue !== value)
        {
            _internal_currentUser = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "currentUser", oldValue, _internal_currentUser));
        }
    }

    public function set dealUser(value:String) : void
    {
        var oldValue:String = _internal_dealUser;
        if (oldValue !== value)
        {
            _internal_dealUser = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dealUser", oldValue, _internal_dealUser));
        }
    }

    public function set note(value:String) : void
    {
        var oldValue:String = _internal_note;
        if (oldValue !== value)
        {
            _internal_note = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "note", oldValue, _internal_note));
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
    public function get _model() : _CurrentAlarmEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CurrentAlarmEntityMetadata) : void
    {
        var oldValue : _CurrentAlarmEntityMetadata = model_internal::_dminternal_model;
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
