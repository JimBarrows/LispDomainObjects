Ext.namespace('BizOnDemand.Desktop');
BizOnDemand.Desktop.Toolbar = Ext.extend(Ext.Toolbar, {
	parentPanel: undefined
	,id: 'BizOnDemand.Desktop.Toolbar'
	,initComponent: function() {
 		var toolbar = this
 		var config = {
 			items: [{
				xtype: 'tbbutton'
				,text: 'Products'
				,handler: function() {
						toolbar.parentPanel.getLayout().setActiveItem(1);
					}
				}
			,'->'
			,{
				xtype: 'tbbutton'
				,text: 'Business'
				,handler: function() {
										toolbar.parentPanel.layout.setActiveItem( 0)							
	 		  }
			}
			,{
				xtype: 'tbbutton'
	 		  ,text: 'Party Form'
	 		  ,handler: function() {
						var w = new Ext.Window( {
							layout:'fit'
							,width: 700
							,height: 300
							,title: 'Temp Party'
							,items: [{ 
								xtype: 'BizOnDemand.Party.PartyForm'
							}]
						})
						w.show()
					}
	 			}]
 		}
 		 // apply config
    Ext.apply(this, config);
    Ext.apply(this.initialConfig, config);

    BizOnDemand.Desktop.Toolbar.superclass.initComponent.apply(this, arguments);

    // after parent code here, e.g. install event handlers
    // this.on('beforerender', function(dis) {
    // alert('before render');
    // });
  }
  ,onRender: function() {
    BizOnDemand.Desktop.Toolbar.superclass.onRender.apply(this, arguments);
  }
  // any other added/overrided methods
});

Ext.reg('BizOnDemand.Desktop.Toolbar', BizOnDemand.Desktop.Toolbar);