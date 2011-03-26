Ext.namespace('Party');
Party.Tabs = Ext.extend(Ext.TabPanel, {

    //    ,constructor:function(config) {
//        // constructor pre-processing - configure listeners here
//        config = config || {};
//        config.listeners = config.listeners || {};
//        Ext.applyIf(config.listeners, {
//             expand:{scope:this, fn:function() {
//            }}
//            ,collapse:{scope:this, fn:function() {
//            }}
//        });
//
//        
//        Party.Tabs.superclass.constructor.apply(this, arguments);
//
//        // constructor post-processing
//
//    }, 

    initComponent: function() {

        var config = {};

        // apply config
        Ext.apply(this, config);
        Ext.apply(this.initialConfig, config);

        Party.Tabs.superclass.initComponent.apply(this, arguments);

        // after parent code here, e.g. install event handlers
        // this.on('beforerender', function(dis) {
        // alert('before render');
        // });
    }

    ,
    onRender: function() {

        Party.Tabs.superclass.onRender.apply(this, arguments);

    }

    // any other added/overrided methods
});

Ext.reg('Party.Tabs', Party.Tabs);