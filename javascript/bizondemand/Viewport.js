Ext.namespace('BizOnDemand');
BizOnDemand.Viewport = Ext.extend(Ext.Viewport, {
	id: 'BizOnDemand.Viewport'
	,initComponent: function() {
		var viewport = this;
    var config = {
			layout: 'border'
    	,items: [{
				region: 'center'
    		,xtype: 'BizOnDemand.Desktop.MainPanel'
     	}]
    };

    // apply config
    Ext.apply(this, config);
    Ext.apply(this.initialConfig, config);

    BizOnDemand.Viewport.superclass.initComponent.apply(this, arguments);

  }
  ,onRender: function() {
    BizOnDemand.Viewport.superclass.onRender.apply(this, arguments);
  }

  // any other added/overrided methods
});

Ext.reg('BizOnDemand.Viewport', BizOnDemand.Viewport);
