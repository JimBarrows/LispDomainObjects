Ext.namespace('Party');
Party.Form = Ext.extend(Ext.form.FormPanel, {
    
	id: 'Party.Form'
//  , url: '/party.json'
//	, autoload: '/party.json'
	, waitMessage: 'Please wait.'
	
  , initComponent: function() {
  	var config = {
  		monitorValid: true
  		,autoScrol:true
    	,items: [{
				xtype: 'hidden'
				, name: 'id'
			},{
      	xtype:'textfield'
        , id: 'Party.Form.NameField'
        , name: 'name'
        , fieldLabel: 'Name'
        , allowBlank:false
      }]
      , buttons: [{
      	text:'Submit'
      	, formBind:true
      	, scope:this
      	, handler: this.submit 
      }]
    };

    // apply config
    Ext.apply(this, config);
    Ext.apply(this.initialConfig, config);

    Party.Form.superclass.initComponent.apply(this, arguments);

    // after parent code here, e.g. install event handlers
    // this.on('beforerender', function(dis) {
    // alert('before render');
    // });
  }
    
  , onRender: function() {
  	Party.Form.superclass.onRender.apply(this, arguments);
	}
	
	, submit : function(button, event) {
		this.getForm().submit({
    	url: this.url
    	, scope: this
    	, waitMsg: this.waitMsg
    	, success: this.onSuccess
    	, failure: this.onFailure
    })
  }
    
  , onSuccess: function(form, action) {
  	Ext.Msg.show({
    	title: 'Success'
      , msg: 'Success!'
      , modal: true
      , icon: Ext.Msg.INFO
      , buttons: Ext.Msg.OK            
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
   	Ext.Msg.alert('Failure', action.response.responseText);
  }
    
  ,onServerInvalid: function(form,action) {
   	Ext.Msg.alert('Failure', action.result.msg);
  }
});

Ext.reg('Party.Form', Party.Form);