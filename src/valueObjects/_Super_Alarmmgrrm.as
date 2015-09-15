/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Alarmmgrrm.as.
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
public class _Super_Alarmmgrrm extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.alarm.data.kyland.Alarmmgrrm") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.alarm.data.kyland.Alarmmgrrm", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.alarm.data.kyland.Alarmmgrrm", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _AlarmmgrrmEntityMetadata;
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
    private var _internal_clearTime : String;
    private var _internal_PONIfId : String;
    private var _internal_genTime : String;
    private var _internal_nodeType : String;
    private var _internal_ONUId : String;
    private var _internal_VPI : String;
    private var _internal_userIdClear : String;
    private var _internal_alarmKind : String;
    private var _internal_userIdAffirmer : String;
    private var _internal_RMid : String;
    private var _internal_portType : String;
    private var _internal_alarmType : String;
    private var _internal_affirmState : String;
    private var _internal_alarmId : String;
    private var _internal_monitorEntityId : String;
    private var _internal_reasonForClear : String;
    private var _internal_alarmLevel : String;
    private var _internal_slotId : String;
    private var _internal_oltId : String;
    private var _internal_VCI : String;
    private var _internal_affirmTime : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Alarmmgrrm()
    {
        _model = new _AlarmmgrrmEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get clearTime() : String
    {
        return _internal_clearTime;
    }

    [Bindable(event="propertyChange")]
    public function get PONIfId() : String
    {
        return _internal_PONIfId;
    }

    [Bindable(event="propertyChange")]
    public function get genTime() : String
    {
        return _internal_genTime;
    }

    [Bindable(event="propertyChange")]
    public function get nodeType() : String
    {
        return _internal_nodeType;
    }

    [Bindable(event="propertyChange")]
    public function get ONUId() : String
    {
        return _internal_ONUId;
    }

    [Bindable(event="propertyChange")]
    public function get VPI() : String
    {
        return _internal_VPI;
    }

    [Bindable(event="propertyChange")]
    public function get userIdClear() : String
    {
        return _internal_userIdClear;
    }

    [Bindable(event="propertyChange")]
    public function get alarmKind() : String
    {
        return _internal_alarmKind;
    }

    [Bindable(event="propertyChange")]
    public function get userIdAffirmer() : String
    {
        return _internal_userIdAffirmer;
    }

    [Bindable(event="propertyChange")]
    public function get RMid() : String
    {
        return _internal_RMid;
    }

    [Bindable(event="propertyChange")]
    public function get portType() : String
    {
        return _internal_portType;
    }

    [Bindable(event="propertyChange")]
    public function get alarmType() : String
    {
        return _internal_alarmType;
    }

    [Bindable(event="propertyChange")]
    public function get affirmState() : String
    {
        return _internal_affirmState;
    }

    [Bindable(event="propertyChange")]
    public function get alarmId() : String
    {
        return _internal_alarmId;
    }

    [Bindable(event="propertyChange")]
    public function get monitorEntityId() : String
    {
        return _internal_monitorEntityId;
    }

    [Bindable(event="propertyChange")]
    public function get reasonForClear() : String
    {
        return _internal_reasonForClear;
    }

    [Bindable(event="propertyChange")]
    public function get alarmLevel() : String
    {
        return _internal_alarmLevel;
    }

    [Bindable(event="propertyChange")]
    public function get slotId() : String
    {
        return _internal_slotId;
    }

    [Bindable(event="propertyChange")]
    public function get oltId() : String
    {
        return _internal_oltId;
    }

    [Bindable(event="propertyChange")]
    public function get VCI() : String
    {
        return _internal_VCI;
    }

    [Bindable(event="propertyChange")]
    public function get affirmTime() : String
    {
        return _internal_affirmTime;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set clearTime(value:String) : void
    {
        var oldValue:String = _internal_clearTime;
        if (oldValue !== value)
        {
            _internal_clearTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "clearTime", oldValue, _internal_clearTime));
        }
    }

    public function set PONIfId(value:String) : void
    {
        var oldValue:String = _internal_PONIfId;
        if (oldValue !== value)
        {
            _internal_PONIfId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "PONIfId", oldValue, _internal_PONIfId));
        }
    }

    public function set genTime(value:String) : void
    {
        var oldValue:String = _internal_genTime;
        if (oldValue !== value)
        {
            _internal_genTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "genTime", oldValue, _internal_genTime));
        }
    }

    public function set nodeType(value:String) : void
    {
        var oldValue:String = _internal_nodeType;
        if (oldValue !== value)
        {
            _internal_nodeType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nodeType", oldValue, _internal_nodeType));
        }
    }

    public function set ONUId(value:String) : void
    {
        var oldValue:String = _internal_ONUId;
        if (oldValue !== value)
        {
            _internal_ONUId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ONUId", oldValue, _internal_ONUId));
        }
    }

    public function set VPI(value:String) : void
    {
        var oldValue:String = _internal_VPI;
        if (oldValue !== value)
        {
            _internal_VPI = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "VPI", oldValue, _internal_VPI));
        }
    }

    public function set userIdClear(value:String) : void
    {
        var oldValue:String = _internal_userIdClear;
        if (oldValue !== value)
        {
            _internal_userIdClear = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "userIdClear", oldValue, _internal_userIdClear));
        }
    }

    public function set alarmKind(value:String) : void
    {
        var oldValue:String = _internal_alarmKind;
        if (oldValue !== value)
        {
            _internal_alarmKind = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alarmKind", oldValue, _internal_alarmKind));
        }
    }

    public function set userIdAffirmer(value:String) : void
    {
        var oldValue:String = _internal_userIdAffirmer;
        if (oldValue !== value)
        {
            _internal_userIdAffirmer = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "userIdAffirmer", oldValue, _internal_userIdAffirmer));
        }
    }

    public function set RMid(value:String) : void
    {
        var oldValue:String = _internal_RMid;
        if (oldValue !== value)
        {
            _internal_RMid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RMid", oldValue, _internal_RMid));
        }
    }

    public function set portType(value:String) : void
    {
        var oldValue:String = _internal_portType;
        if (oldValue !== value)
        {
            _internal_portType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "portType", oldValue, _internal_portType));
        }
    }

    public function set alarmType(value:String) : void
    {
        var oldValue:String = _internal_alarmType;
        if (oldValue !== value)
        {
            _internal_alarmType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "alarmType", oldValue, _internal_alarmType));
        }
    }

    public function set affirmState(value:String) : void
    {
        var oldValue:String = _internal_affirmState;
        if (oldValue !== value)
        {
            _internal_affirmState = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "affirmState", oldValue, _internal_affirmState));
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

    public function set monitorEntityId(value:String) : void
    {
        var oldValue:String = _internal_monitorEntityId;
        if (oldValue !== value)
        {
            _internal_monitorEntityId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "monitorEntityId", oldValue, _internal_monitorEntityId));
        }
    }

    public function set reasonForClear(value:String) : void
    {
        var oldValue:String = _internal_reasonForClear;
        if (oldValue !== value)
        {
            _internal_reasonForClear = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "reasonForClear", oldValue, _internal_reasonForClear));
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

    public function set slotId(value:String) : void
    {
        var oldValue:String = _internal_slotId;
        if (oldValue !== value)
        {
            _internal_slotId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "slotId", oldValue, _internal_slotId));
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

    public function set VCI(value:String) : void
    {
        var oldValue:String = _internal_VCI;
        if (oldValue !== value)
        {
            _internal_VCI = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "VCI", oldValue, _internal_VCI));
        }
    }

    public function set affirmTime(value:String) : void
    {
        var oldValue:String = _internal_affirmTime;
        if (oldValue !== value)
        {
            _internal_affirmTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "affirmTime", oldValue, _internal_affirmTime));
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
    public function get _model() : _AlarmmgrrmEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _AlarmmgrrmEntityMetadata) : void
    {
        var oldValue : _AlarmmgrrmEntityMetadata = model_internal::_dminternal_model;
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
