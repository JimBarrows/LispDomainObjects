Ext.namespace('BizOnDemand');
BizOnDemand.Viewport = Ext.extend(Ext.Viewport, {

	initComponent: function() {
  	var Viewport = this
    var config = {
    	layout: 'border'
    	,items: [{
    		region: 'center'
    		,xtype: 'panel'
    		,layout: 'card'
    		,activeItem: 0
    		,tbar: {
    			xtype: 'BizOnDemand.Desktop.Toolbar'
    			,parentPanel: this
      	}
      	,items:[{
      			xtype:'BizOnDemand.Business.Window'
    		}]
     	}]
    };

    // apply config
    Ext.apply(this, config);
    Ext.apply(this.initialConfig, config);

    BizOnDemand.Viewport.superclass.initComponent.apply(this, arguments);

    // after parent code here, e.g. install event handlers
    // this.on('beforerender', function(dis) {
    // alert('before render');
    // });
  }
  ,onRender: function() {
    BizOnDemand.Viewport.superclass.onRender.apply(this, arguments);
  }

  // any other added/overrided methods
});

Ext.reg('BizOnDemand.Viewport', BizOnDemand.Viewport);
