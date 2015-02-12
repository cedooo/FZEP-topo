/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - SiteSchema.as.
 */
package services
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;
import valueObjects.Page;
import valueObjects.Schema;
import valueObjects.SchemaVO;
import valueObjects.SearchSite;
import valueObjects.Site;
import valueObjects.SiteRelation;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_SiteSchema extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{

    // Constructor
    public function _Super_SiteSchema()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();

        // initialize RemoteClass alias for all entities returned by functions of this service
        valueObjects.Site._initRemoteClassAlias();

        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;

        operation = new mx.rpc.remoting.Operation(null, "getListByAreaName");
         operation.resultElementType = valueObjects.Site;
        operations["getListByAreaName"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getListByArea");
         operation.resultElementType = valueObjects.Site;
        operations["getListByArea"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getSchemaByAreaName");
         operation.resultType = valueObjects.Schema;
        operations["getSchemaByAreaName"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "saveSchema");
         operation.resultType = Boolean;
        operations["saveSchema"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getListByCondition");
         operation.resultElementType = valueObjects.Site;
        operations["getListByCondition"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getPage");
         operation.resultType = valueObjects.Page;
        operations["getPage"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getSiteRelationBySiteName");
         operation.resultType = valueObjects.SiteRelation;
        operations["getSiteRelationBySiteName"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getDefaultSchema");
         operation.resultType = valueObjects.SchemaVO;
        operations["getDefaultSchema"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getSchemaVOByAreaName");
         operation.resultType = valueObjects.SchemaVO;
        operations["getSchemaVOByAreaName"] = operation;

        _serviceControl.operations = operations;
        _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
        destination = "SiteSchema";
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'getListByAreaName' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getListByAreaName(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getListByAreaName");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getListByArea' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getListByArea(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getListByArea");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getSchemaByAreaName' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSchemaByAreaName(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSchemaByAreaName");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'saveSchema' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function saveSchema(arg0:String, arg1:String, arg2:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("saveSchema");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1,arg2) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getListByCondition' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getListByCondition(arg0:valueObjects.SearchSite) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getListByCondition");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getPage' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPage(arg0:valueObjects.SearchSite) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPage");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getSiteRelationBySiteName' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSiteRelationBySiteName(arg0:String, arg1:int) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSiteRelationBySiteName");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0,arg1) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getDefaultSchema' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getDefaultSchema() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getDefaultSchema");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getSchemaVOByAreaName' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSchemaVOByAreaName(arg0:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSchemaVOByAreaName");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(arg0) ;
        return _internal_token;
    }
     
}

}
