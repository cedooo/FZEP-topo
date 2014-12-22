/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SiteRelation.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.Cable;
import valueObjects.Site;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_SiteRelation extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
        try
        {
            if (flash.net.getClassByAlias("cn.com.dhcc.fzep.topo.common.SiteRelation") == null)
            {
                flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.common.SiteRelation", cz);
            }
        }
        catch (e:Error)
        {
            flash.net.registerClassAlias("cn.com.dhcc.fzep.topo.common.SiteRelation", cz);
        }
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Site.initRemoteClassAliasSingleChild();
        valueObjects.Cable.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _SiteRelationEntityMetadata;
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
    private var _internal_center : valueObjects.Site;
    private var _internal_listCable : ArrayCollection;
    model_internal var _internal_listCable_leaf:valueObjects.Cable;
    private var _internal_levelOneSite : ArrayCollection;
    model_internal var _internal_levelOneSite_leaf:valueObjects.Site;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SiteRelation()
    {
        _model = new _SiteRelationEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get center() : valueObjects.Site
    {
        return _internal_center;
    }

    [Bindable(event="propertyChange")]
    public function get listCable() : ArrayCollection
    {
        return _internal_listCable;
    }

    [Bindable(event="propertyChange")]
    public function get levelOneSite() : ArrayCollection
    {
        return _internal_levelOneSite;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set center(value:valueObjects.Site) : void
    {
        var oldValue:valueObjects.Site = _internal_center;
        if (oldValue !== value)
        {
            _internal_center = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "center", oldValue, _internal_center));
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

    public function set levelOneSite(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_levelOneSite;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_levelOneSite = value;
            }
            else if (value is Array)
            {
                _internal_levelOneSite = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_levelOneSite = null;
            }
            else
            {
                throw new Error("value of levelOneSite must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "levelOneSite", oldValue, _internal_levelOneSite));
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
    public function get _model() : _SiteRelationEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SiteRelationEntityMetadata) : void
    {
        var oldValue : _SiteRelationEntityMetadata = model_internal::_dminternal_model;
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
