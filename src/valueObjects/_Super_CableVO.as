/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - CableVO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.FiberCoreNumber;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_CableVO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.vo.CableVO") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.vo.CableVO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.vo.CableVO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.FiberCoreNumber.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _CableVOEntityMetadata;
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
    private var _internal_cableStartId : String;
    private var _internal_fiberId : String;
    private var _internal_cableId : String;
    private var _internal_constructionUnitId : String;
    private var _internal_runTime : String;
    private var _internal_cableType : String;
    private var _internal_cableName : String;
    private var _internal_isMainRoad : String;
    private var _internal_descp : String;
    private var _internal_layingType : String;
    private var _internal_listFibeCoreNumber : ArrayCollection;
    model_internal var _internal_listFibeCoreNumber_leaf:valueObjects.FiberCoreNumber;
    private var _internal_delFlg : String;
    private var _internal_cableLength : String;
    private var _internal_bizType : String;
    private var _internal_cableEndId : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_CableVO()
    {
        _model = new _CableVOEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get cableStartId() : String
    {
        return _internal_cableStartId;
    }

    [Bindable(event="propertyChange")]
    public function get fiberId() : String
    {
        return _internal_fiberId;
    }

    [Bindable(event="propertyChange")]
    public function get cableId() : String
    {
        return _internal_cableId;
    }

    [Bindable(event="propertyChange")]
    public function get constructionUnitId() : String
    {
        return _internal_constructionUnitId;
    }

    [Bindable(event="propertyChange")]
    public function get runTime() : String
    {
        return _internal_runTime;
    }

    [Bindable(event="propertyChange")]
    public function get cableType() : String
    {
        return _internal_cableType;
    }

    [Bindable(event="propertyChange")]
    public function get cableName() : String
    {
        return _internal_cableName;
    }

    [Bindable(event="propertyChange")]
    public function get isMainRoad() : String
    {
        return _internal_isMainRoad;
    }

    [Bindable(event="propertyChange")]
    public function get descp() : String
    {
        return _internal_descp;
    }

    [Bindable(event="propertyChange")]
    public function get layingType() : String
    {
        return _internal_layingType;
    }

    [Bindable(event="propertyChange")]
    public function get listFibeCoreNumber() : ArrayCollection
    {
        return _internal_listFibeCoreNumber;
    }

    [Bindable(event="propertyChange")]
    public function get delFlg() : String
    {
        return _internal_delFlg;
    }

    [Bindable(event="propertyChange")]
    public function get cableLength() : String
    {
        return _internal_cableLength;
    }

    [Bindable(event="propertyChange")]
    public function get bizType() : String
    {
        return _internal_bizType;
    }

    [Bindable(event="propertyChange")]
    public function get cableEndId() : String
    {
        return _internal_cableEndId;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set cableStartId(value:String) : void
    {
        var oldValue:String = _internal_cableStartId;
        if (oldValue !== value)
        {
            _internal_cableStartId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cableStartId", oldValue, _internal_cableStartId));
        }
    }

    public function set fiberId(value:String) : void
    {
        var oldValue:String = _internal_fiberId;
        if (oldValue !== value)
        {
            _internal_fiberId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fiberId", oldValue, _internal_fiberId));
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

    public function set constructionUnitId(value:String) : void
    {
        var oldValue:String = _internal_constructionUnitId;
        if (oldValue !== value)
        {
            _internal_constructionUnitId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "constructionUnitId", oldValue, _internal_constructionUnitId));
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

    public function set cableType(value:String) : void
    {
        var oldValue:String = _internal_cableType;
        if (oldValue !== value)
        {
            _internal_cableType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cableType", oldValue, _internal_cableType));
        }
    }

    public function set cableName(value:String) : void
    {
        var oldValue:String = _internal_cableName;
        if (oldValue !== value)
        {
            _internal_cableName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cableName", oldValue, _internal_cableName));
        }
    }

    public function set isMainRoad(value:String) : void
    {
        var oldValue:String = _internal_isMainRoad;
        if (oldValue !== value)
        {
            _internal_isMainRoad = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "isMainRoad", oldValue, _internal_isMainRoad));
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

    public function set layingType(value:String) : void
    {
        var oldValue:String = _internal_layingType;
        if (oldValue !== value)
        {
            _internal_layingType = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "layingType", oldValue, _internal_layingType));
        }
    }

    public function set listFibeCoreNumber(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listFibeCoreNumber;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listFibeCoreNumber = value;
            }
            else if (value is Array)
            {
                _internal_listFibeCoreNumber = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_listFibeCoreNumber = null;
            }
            else
            {
                throw new Error("value of listFibeCoreNumber must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listFibeCoreNumber", oldValue, _internal_listFibeCoreNumber));
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

    public function set cableLength(value:String) : void
    {
        var oldValue:String = _internal_cableLength;
        if (oldValue !== value)
        {
            _internal_cableLength = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cableLength", oldValue, _internal_cableLength));
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

    public function set cableEndId(value:String) : void
    {
        var oldValue:String = _internal_cableEndId;
        if (oldValue !== value)
        {
            _internal_cableEndId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cableEndId", oldValue, _internal_cableEndId));
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
    public function get _model() : _CableVOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _CableVOEntityMetadata) : void
    {
        var oldValue : _CableVOEntityMetadata = model_internal::_dminternal_model;
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
