Ext.namespace('BizOnDemand.Business');
BizOnDemand.Business.Window = Ext.extend(Ext.Window, {
	
	initComponent: function() {
 
		var config = {
				height: 400
				, width: 400
				, items: [
						{
								xtype: 'Party.Form'
								, url: '/business'
								//, autoLoad: {url:'/business', scope: this}
								, id: 'BizOnDemand.Business.Form'
								, height: 200
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
		Ext.getCmp('BizOnDemand.Business.Form').load({
			url: '/business'
		});

	}

    // any other added/overrided methods
});

Ext.reg('BizOnDemand.Business.Window', BizOnDemand.Business.Window);
