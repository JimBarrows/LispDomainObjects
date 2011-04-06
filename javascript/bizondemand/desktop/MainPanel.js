Ext.namespace('BizOnDemand.Desktop');
BizOnDemand.Desktop.MainPanel = Ext.extend(Ext.Panel, {
				id:'BizOnDemand.Desktop.MainPanel'
				,initComponent: function() {
						var mainPanel = this;
						var config = {
								layout: 'card'
								,activeItem: 0
								,tbar: {
										xtype: 'BizOnDemand.Desktop.Toolbar'
										,parentPanel: mainPanel
								}
								,items:[{
												xtype:'BizOnDemand.Business.Window'
										},{
												id:'products-panel'
												,xtype:'BizOnDemand.Products.ProductsPanel'
										}]
						}
						Ext.apply(this, config);
						Ext.apply(this.initialConfig, config);
						BizOnDemand.Desktop.MainPanel.superclass.initComponent.apply(this, arguments);
				}
				,onRender: function() {
						BizOnDemand.Desktop.MainPanel.superclass.onRender.apply(this, arguments);
				}
		});

Ext.reg('BizOnDemand.Desktop.MainPanel', BizOnDemand.Desktop.MainPanel);