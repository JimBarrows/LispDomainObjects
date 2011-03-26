Ext.namespace('Party');
Party.Window = Ext.extend(Ext.Panel, {

	initComponent: function() {

 		var config = {
				items: [{
								xtype: 'Party.Form'
						},{
								xtype: 'Party.Tabs'
						}]
		};

		// apply config
		Ext.apply(this, config);
		Ext.apply(this.initialConfig, config);

		Party.Window.superclass.initComponent.apply(this, arguments);

		// after parent code here, e.g. install event handlers
		// this.on('beforerender', function(dis) {
		// alert('before render');
		// });
	}

	,onRender: function() {

		Party.Form.superclass.onRender.apply(this, arguments);

	}

	// any other added/overrided methods
});

Ext.reg('Party.Window', Party.Window);
