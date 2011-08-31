Ext.namespace('bizondemand.products');
bizondemand.products.ProductForm = Ext.extend(Ext.FormPanel, {

	id: 'bizondemand.products.ProductForm'
	,title: 'Edit Product Information'
	,loadUrl: 'product-load'
	,saveUrl: 'product-save'
	,waitMsg: "Please wait while we load data"
	
	,initComponent: function() {
		var productForm = this;
 		var config = {
 			defaultType: 'textfield'
 			,monitorValid: true
 			,buttonAlign:'right'
 			,items:	[{
 				name:'name'
 				,fieldLabel:'Name'
 			 	}]
 			 ,buttons: [{
 			 	text: 'Save'
 			 	,handler: function( button, event) {
 			 		productForm.submit( 'product-save', 'Please wait while saving data')
 			 		}
 			 	}]	
 			};

		// apply config
		Ext.apply(this, config);
		Ext.apply(this.initialConfig, config);

		bizondemand.products.ProductForm.superclass.initComponent.apply(this, arguments);

		// after parent code here, e.g. install event handlers
		// this.on('beforerender', function(dis) {
		// alert('before render');
		// });
	}

	,onRender: function() {

		bizondemand.products.ProductForm.superclass.onRender.apply(this, arguments);
		this.getForm().waitMsgTarget=this.getEl();

	}
		
	,submit : function(url, waitMsg) {
    	this.getForm().submit({
    		url: url
    		,scope: this
    		,waitMsg: waitMsg
    		,success: this.onSuccess
    		,failure: this.onFailure
    	})
    }
    
    ,onSuccess: function(form, action) {
    	Ext.Msg.show({
            title: 'Success'
            ,msg: 'Success!'
            ,modal: true
            ,icon: Ext.Msg.INFO
            ,buttons: Ext.Msg.OK            
        });
    }
    
    ,onFailure: function(form, action) {
			switch (action.failureType) {
	    	case Ext.form.Action.CLIENT_INVALID:
	            this.onClientInvalid( form,action);
	        break;
	        case Ext.form.Action.CONNECT_FAILURE:
	            this.onConnectionFailure(form,action);
	        break;
	        case Ext.form.Action.SERVER_INVALID:
	        	this.onServerInvalid(form,action);
	        break;	        
      };
    }
    
    ,onClientInvalid: function(form,action) {
   		Ext.Msg.alert('Failure', 'Form fields may not be submitted with invalid values'); 	
    }
    
    ,onConnectionFailure: function(form,action) {
    	Ext.Msg.alert('Failure', 'Ajax communication failed');
    }
    
    ,onServerInvalid: function(form,action) {
    	Ext.Msg.alert('Failure', action.result.msg);
    }
	// any other added/overrided methods
});

Ext.reg('bizondemand.products.ProductForm', bizondemand.products.ProductForm);
