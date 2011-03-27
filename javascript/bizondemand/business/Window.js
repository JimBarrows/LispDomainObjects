Ext.namespace('BizOnDemand.Business');
BizOnDemand.Business.Window = Ext.extend(Ext.Window, {
	
	initComponent: function() {
 
		var config = {
				height: 400
				, width: 400
				, items: [{
								xtype: 'Party.Form'
								, url: '/business'
								, autoLoad: '/business'
								, id: 'BizOnDemand.Business.Form'
						}]
		};

		// apply config
		Ext.apply(this, config);
		Ext.apply(this.initialConfig, config);

		BizOnDemand.Business.Window.superclass.initComponent.apply(this, arguments);

		// after parent code here, e.g. install event handlers
		// this.on('beforerender', function(dis) {
		// alert('before render');
		// });
	}

  ,onRender: function() {

		BizOnDemand.Business.Window.superclass.onRender.apply(this, arguments);

	}

    // any other added/overrided methods
});

Ext.reg('BizOnDemand.Business.Window', BizOnDemand.Business.Window);
