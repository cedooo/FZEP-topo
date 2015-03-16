/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SchemaVO.as.
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
public class _Super_SchemaVO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.vo.SchemaVO") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.vo.SchemaVO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.vo.SchemaVO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _SchemaVOEntityMetadata;
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
    private var _internal_schemaArgs : String;
    private var _internal_schemaType : String;
    private var _internal_schemaName : String;
    private var _internal_schemaAddTime : String;
    private var _internal_schemaId : String;
    private var _internal_schemaDelTime : String;
    private var _internal_schemaData : String;
    private var _internal_schemaNote : String;
    private var _internal_areaId : String;
    private var _internal_siteId : String;
    private var _internal_areaName : String;
    private var _internal_isDefault : String;
    private var _internal_siteName : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SchemaVO()
    {
        _model = new _SchemaVOEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get schemaArgs() : String
    {
        return _internal_schemaArgs;
    }

    [Bindable(event="propertyChange")]
    public function get schemaType() : String
    {
        return _internal_schemaType;
    }

    [Bindable(event="propertyChange")]
    public function get schemaName() : String
    {
        return _internal_schemaName;
    }

    [Bindable(event="propertyChange")]
    public function get schemaAddTime() : String
    {
        return _internal_schemaAddTime;
    }

    [Bindable(event="propertyChange")]
    public function get schemaId() : String
    {
        return _internal_schemaId;
    }

    [Bindable(event="propertyChange")]
    public function get schemaDelTime() : String
    {
        return _internal_schemaDelTime;
    }

    [Bindable(event="propertyChange")]
    public function get schemaData() : String
    {
        return _internal_schemaData;
    }

    [Bindable(event="propertyChange")]
    public function get schemaNote() : String
    {
        return _internal_schemaNote;
    }

    [Bindable(event="propertyChange")]
    public function get areaId() : String
    {
        return _internal_areaId;
    }

    [Bindable(event="propertyChange")]
    public function get siteId() : String
    {
        return _internal_siteId;
    }

    [Bindable(event="propertyChange")]
    public function get areaName() : String
    {
        return _internal_areaName;
    }

    [Bindable(event="propertyChange")]
    public function get isDefault() : String
    {
        return _internal_isDefault;
    }

    [Bindable(event="propertyChange")]
    public function get siteName() : String
    {
        return _internal_siteName;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set schemaArgs(value:String) : void
    {
        var oldValue:String = _internal_schemaArgs;
        if (oldValue !== value)
        {
            _internal_schemaArgs = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaArgs", oldValue, _internal_schemaArgs));
        }
    }

    public function set schemaType(value:String) : void
    {
        var oldValue:String = _internal_schemaType;
        if (oldValue !== value)
        {
            _internal_schemaType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaType", oldValue, _internal_schemaType));
        }
    }

    public function set schemaName(value:String) : void
    {
        var oldValue:String = _internal_schemaName;
        if (oldValue !== value)
        {
            _internal_schemaName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaName", oldValue, _internal_schemaName));
        }
    }

    public function set schemaAddTime(value:String) : void
    {
        var oldValue:String = _internal_schemaAddTime;
        if (oldValue !== value)
        {
            _internal_schemaAddTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaAddTime", oldValue, _internal_schemaAddTime));
        }
    }

    public function set schemaId(value:String) : void
    {
        var oldValue:String = _internal_schemaId;
        if (oldValue !== value)
        {
            _internal_schemaId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaId", oldValue, _internal_schemaId));
        }
    }

    public function set schemaDelTime(value:String) : void
    {
        var oldValue:String = _internal_schemaDelTime;
        if (oldValue !== value)
        {
            _internal_schemaDelTime = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaDelTime", oldValue, _internal_schemaDelTime));
        }
    }

    public function set schemaData(value:String) : void
    {
        var oldValue:String = _internal_schemaData;
        if (oldValue !== value)
        {
            _internal_schemaData = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaData", oldValue, _internal_schemaData));
        }
    }

    public function set schemaNote(value:String) : void
    {
        var oldValue:String = _internal_schemaNote;
        if (oldValue !== value)
        {
            _internal_schemaNote = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "schemaNote", oldValue, _internal_schemaNote));
        }
    }

    public function set areaId(value:String) : void
    {
        var oldValue:String = _internal_areaId;
        if (oldValue !== value)
        {
            _internal_areaId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "areaId", oldValue, _internal_areaId));
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

    public function set areaName(value:String) : void
    {
        var oldValue:String = _internal_areaName;
        if (oldValue !== value)
        {
            _internal_areaName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "areaName", oldValue, _internal_areaName));
        }
    }

    public function set isDefault(value:String) : void
    {
        var oldValue:String = _internal_isDefault;
        if (oldValue !== value)
        {
            _internal_isDefault = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isDefault", oldValue, _internal_isDefault));
        }
    }

    public function set siteName(value:String) : void
    {
        var oldValue:String = _internal_siteName;
        if (oldValue !== value)
        {
            _internal_siteName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "siteName", oldValue, _internal_siteName));
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
    public function get _model() : _SchemaVOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SchemaVOEntityMetadata) : void
    {
        var oldValue : _SchemaVOEntityMetadata = model_internal::_dminternal_model;
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
