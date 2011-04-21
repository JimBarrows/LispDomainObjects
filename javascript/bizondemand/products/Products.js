Ext.namespace('BizOnDemand.Products');
BizOnDemand.Products.ProductsPanel = Ext.extend(Ext.Panel, {
	
	productStore: new Ext.data.JsonStore({
		autoDestroy: true
    ,autoLoad: true
    ,url: '/product-list'
    ,root: 'data'
		,fields: [
			{name: 'name'}
			,{name:'introductionDate',type:'date', dateFormat: 'Y-m-d'}
			,{name:'sales_discontinuation_date',type:'date', dateFormat: Date.patterns.ISO8601Short}
			,{name:'support_discontinuation_date',type:'date', dateFormat: Date.patterns.ISO8601Short}
			,{name:'manufactured_by'}
		]
	})

	,id : 'BizOnDemand.Products.ProductsPanel'

	,initComponent: function() {
		productWindow = this
		var filters = new Ext.ux.grid.GridFilters({
			// encode and local configuration options defined previously for easier reuse
			encode: false // json encode the filter query
			,local: true   // defaults to false (remote filtering)
			,filters: [
				{
					type: 'string'
					,dataIndex: 'name'
				}
				,{
					type: 'date'
					,dataIndex: 'introductionDate'
					,format: 'Y-m-d'
				}
				,{
					type: 'date'
					,dataIndex: 'sales_discontinuation_date'
				}
				,{
					type: 'date'
					,dataIndex: 'support_discontinuation_date'
				}
				,{
					type: 'string'
					,dataIndex: 'manufactured_by'
				}
			]
    })
		var config = {
      layout: 'border'
      ,width: 700
      ,height: 300
			,title: 'Products'
      ,items: [{
				region:'center'
				,xtype:'grid'
				,loadMask:true
				,store: productWindow.productStore 
				,stripeRows:true
				,autoExpandColumn:'name'
				,plugins: [ filters]
				,tbar: {
					items:[{
							text:'Add'
							,iconCls: 'add'
						}
						,'-'
						,{
							text:'Delete'
							,iconCls: 'delete'
						}]
				}
				,bbar: {
					xtype: 'paging'
					,pageSize:25
					,store: productWindow.productStore 
					,displayInfo: true
					,displayMsg: 'Displaying products {0} - {1} of {2}'
					,emptyMsg: 'No products to display'
					,items: [
						'-', 
						{
							pressed:true
							,enableToggle: true
							,text: 'Show Preview'
							,cls: 'x-btn-text-icon details'
							,toggleHandler: function(btn, pressed){
								var view = grid.getView()
								view.showPreview = pressede
								view.referesh()
							}
						}
					]
				}
				,columns: [
					{ 
						id: 'name'
						,header: 'Name'
						,sortable: true
						,dataIndex: 'name'
						,filterable: true
					}
					,{
						id: 'introductionDate'
						,xtype:'datecolumn'
						,header: 'Introduction Date'
						,sortable: true
						,dataIndex: 'introductionDate'
						,filterable: true
						,format: 'Y-m-d'
					}
					,{
						id: 'sales_discontinuation_date'
						,header: 'Sales Discontinuation Date'
						,sortable: true
						,dataIndex: 'sales_discontinuation_date'
						,filterable: true
					}
					,{
						id: 'support_discontinuation_date'
						,header: 'Support Discontinuation Date'
						,sortable: true
						,dataIndex: 'support_discontinuation_date'
					}
					,{
						id: 'manufactured_by'
						,header: 'Manufactured By'
						,sortable: true
						,dataIndex: 'manufactured_by'
					}
				]
			}]
		};

		// apply config
		Ext.apply(this, config);
		Ext.apply(this.initialConfig, config);

		BizOnDemand.Products.ProductsPanel.superclass.initComponent.apply(this, arguments);

		// after parent code here, e.g. install event handlers
		// this.on('beforerender', function(dis) {
		// alert('before render');
		// });

		this.on('beforeshow', function(thisPanel) {
		  thisPanel.productStore.load({params:{start:0, limit:25}})
		});
	}

  ,onRender: function() {

		BizOnDemand.Products.ProductsPanel.superclass.onRender.apply(this, arguments);

	}

    // any other added/overrided methods
});

Ext.reg('BizOnDemand.Products.ProductsPanel', BizOnDemand.Products.ProductsPanel);
