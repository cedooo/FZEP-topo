/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SiteVO.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.Cable;
import valueObjects.EquipmentVO;
import valueObjects.FiberCoreNumber;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_SiteVO extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.pojo.assets.SiteVO") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.assets.SiteVO", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.pojo.assets.SiteVO", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.EquipmentVO.initRemoteClassAliasSingleChild();
        valueObjects.Cable.initRemoteClassAliasSingleChild();
        valueObjects.FiberCoreNumber.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _SiteVOEntityMetadata;
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
    private var _internal_listEquip : ArrayCollection;
    model_internal var _internal_listEquip_leaf:valueObjects.EquipmentVO;
    private var _internal_descp : String;
    private var _internal_siteId : String;
    private var _internal_listCable : ArrayCollection;
    model_internal var _internal_listCable_leaf:valueObjects.Cable;
    private var _internal_siteAdress : String;
    private var _internal_delFlg : String;
    private var _internal_listFCN : ArrayCollection;
    model_internal var _internal_listFCN_leaf:valueObjects.FiberCoreNumber;
    private var _internal_connactNumber : String;
    private var _internal_siteName : String;
    private var _internal_areaId : String;
    private var _internal_connactName : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SiteVO()
    {
        _model = new _SiteVOEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get listEquip() : ArrayCollection
    {
        return _internal_listEquip;
    }

    [Bindable(event="propertyChange")]
    public function get descp() : String
    {
        return _internal_descp;
    }

    [Bindable(event="propertyChange")]
    public function get siteId() : String
    {
        return _internal_siteId;
    }

    [Bindable(event="propertyChange")]
    public function get listCable() : ArrayCollection
    {
        return _internal_listCable;
    }

    [Bindable(event="propertyChange")]
    public function get siteAdress() : String
    {
        return _internal_siteAdress;
    }

    [Bindable(event="propertyChange")]
    public function get delFlg() : String
    {
        return _internal_delFlg;
    }

    [Bindable(event="propertyChange")]
    public function get listFCN() : ArrayCollection
    {
        return _internal_listFCN;
    }

    [Bindable(event="propertyChange")]
    public function get connactNumber() : String
    {
        return _internal_connactNumber;
    }

    [Bindable(event="propertyChange")]
    public function get siteName() : String
    {
        return _internal_siteName;
    }

    [Bindable(event="propertyChange")]
    public function get areaId() : String
    {
        return _internal_areaId;
    }

    [Bindable(event="propertyChange")]
    public function get connactName() : String
    {
        return _internal_connactName;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set listEquip(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listEquip;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listEquip = value;
            }
            else if (value is Array)
            {
                _internal_listEquip = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_listEquip = null;
            }
            else
            {
                throw new Error("value of listEquip must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listEquip", oldValue, _internal_listEquip));
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

    public function set siteId(value:String) : void
    {
        var oldValue:String = _internal_siteId;
        if (oldValue !== value)
        {
            _internal_siteId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "siteId", oldValue, _internal_siteId));
        }
    }

    public function set listCable(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listCable;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listCable = value;
            }
            else if (value is Array)
            {
                _internal_listCable = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_listCable = null;
            }
            else
            {
                throw new Error("value of listCable must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listCable", oldValue, _internal_listCable));
        }
    }

    public function set siteAdress(value:String) : void
    {
        var oldValue:String = _internal_siteAdress;
        if (oldValue !== value)
        {
            _internal_siteAdress = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "siteAdress", oldValue, _internal_siteAdress));
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

    public function set listFCN(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_listFCN;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_listFCN = value;
            }
            else if (value is Array)
            {
                _internal_listFCN = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_listFCN = null;
            }
            else
            {
                throw new Error("value of listFCN must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "listFCN", oldValue, _internal_listFCN));
        }
    }

    public function set connactNumber(value:String) : void
    {
        var oldValue:String = _internal_connactNumber;
        if (oldValue !== value)
        {
            _internal_connactNumber = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "connactNumber", oldValue, _internal_connactNumber));
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

    public function set areaId(value:String) : void
    {
        var oldValue:String = _internal_areaId;
        if (oldValue !== value)
        {
            _internal_areaId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "areaId", oldValue, _internal_areaId));
        }
    }

    public function set connactName(value:String) : void
    {
        var oldValue:String = _internal_connactName;
        if (oldValue !== value)
        {
            _internal_connactName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "connactName", oldValue, _internal_connactName));
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
    public function get _model() : _SiteVOEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SiteVOEntityMetadata) : void
    {
        var oldValue : _SiteVOEntityMetadata = model_internal::_dminternal_model;
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
