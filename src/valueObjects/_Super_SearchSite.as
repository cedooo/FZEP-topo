/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SearchSite.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.Page;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_SearchSite extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.common.search.SearchSite") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.common.search.SearchSite", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.common.search.SearchSite", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Page.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _SearchSiteEntityMetadata;
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
    private var _internal_areaName : String;
    private var _internal_page : valueObjects.Page;
    private var _internal_exceptList : ArrayCollection;
    private var _internal_searchField : String;
    private var _internal_areaId : int;
    private var _internal_keyWord : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SearchSite()
    {
        _model = new _SearchSiteEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get areaName() : String
    {
        return _internal_areaName;
    }

    [Bindable(event="propertyChange")]
    public function get page() : valueObjects.Page
    {
        return _internal_page;
    }

    [Bindable(event="propertyChange")]
    public function get exceptList() : ArrayCollection
    {
        return _internal_exceptList;
    }

    [Bindable(event="propertyChange")]
    public function get searchField() : String
    {
        return _internal_searchField;
    }

    [Bindable(event="propertyChange")]
    public function get areaId() : int
    {
        return _internal_areaId;
    }

    [Bindable(event="propertyChange")]
    public function get keyWord() : String
    {
        return _internal_keyWord;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set areaName(value:String) : void
    {
        var oldValue:String = _internal_areaName;
        if (oldValue !== value)
        {
            _internal_areaName = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "areaName", oldValue, _internal_areaName));
        }
    }

    public function set page(value:valueObjects.Page) : void
    {
        var oldValue:valueObjects.Page = _internal_page;
        if (oldValue !== value)
        {
            _internal_page = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "page", oldValue, _internal_page));
        }
    }

    public function set exceptList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_exceptList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_exceptList = value;
            }
            else if (value is Array)
            {
                _internal_exceptList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_exceptList = null;
            }
            else
            {
                throw new Error("value of exceptList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "exceptList", oldValue, _internal_exceptList));
        }
    }

    public function set searchField(value:String) : void
    {
        var oldValue:String = _internal_searchField;
        if (oldValue !== value)
        {
            _internal_searchField = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "searchField", oldValue, _internal_searchField));
        }
    }

    public function set areaId(value:int) : void
    {
        var oldValue:int = _internal_areaId;
        if (oldValue !== value)
        {
            _internal_areaId = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "areaId", oldValue, _internal_areaId));
        }
    }

    public function set keyWord(value:String) : void
    {
        var oldValue:String = _internal_keyWord;
        if (oldValue !== value)
        {
            _internal_keyWord = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "keyWord", oldValue, _internal_keyWord));
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
    public function get _model() : _SearchSiteEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SearchSiteEntityMetadata) : void
    {
        var oldValue : _SearchSiteEntityMetadata = model_internal::_dminternal_model;
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
