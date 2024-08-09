//@ui5-bundle kruger/Component-preload.js
sap.ui.require.preload({
	"kruger/Component.js":function(){
sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("kruger.Component",{metadata:{manifest:"json"}})});
},
	"kruger/i18n/i18n.properties":'# This is the resource bundle for kruger\n\n#Texts for manifest.json\n\n#XTIT: Application name\nappTitle=Kruger Invoice\n\n#YDES: Application description\nappDescription=An SAP Fiori application.\n\n#XFLD,45\nflpTitle=Kruger Invoices\n',
	"kruger/manifest.json":'{"_version":"1.59.0","sap.app":{"id":"kruger","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.14.3","toolsId":"f69de7bc-cb54-4e00-9768-b9c9f6c6aa13"},"dataSources":{"mainService":{"uri":"odata/v4/inv-catalog/","type":"OData","settings":{"annotations":[],"odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"Zkruger-manage":{"semanticObject":"Zkruger","action":"manage","title":"{{flpTitle}}","signature":{"parameters":{},"additionalParameters":"allowed"}}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.127.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{},"sap.f":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"kruger.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{"flexibleColumnLayout":{"defaultTwoColumnLayoutType":"TwoColumnsMidExpanded","defaultThreeColumnLayoutType":"ThreeColumnsMidExpanded"},"routerClass":"sap.f.routing.Router"},"routes":[{"pattern":":?query:","name":"InvoicesList","target":["InvoicesList"]},{"pattern":"Invoices({key}):?query:","name":"InvoicesObjectPage","target":["InvoicesList","InvoicesObjectPage"]},{"pattern":"Invoices({key})/Items({key2}):?query:","name":"ItemsObjectPage","target":["InvoicesList","InvoicesObjectPage","ItemsObjectPage"]}],"targets":{"InvoicesList":{"type":"Component","id":"InvoicesList","name":"sap.fe.templates.ListReport","options":{"settings":{"contextPath":"/Invoices","variantManagement":"Page","navigation":{"Invoices":{"detail":{"route":"InvoicesObjectPage"}}},"controlConfiguration":{"@com.sap.vocabularies.UI.v1.LineItem":{"tableSettings":{"type":"ResponsiveTable","enableExport":true,"selectAll":true,"selectionMode":"Multi"}}}}},"controlAggregation":"beginColumnPages","contextPattern":""},"InvoicesObjectPage":{"type":"Component","id":"InvoicesObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/Invoices","navigation":{"Items":{"detail":{"route":"ItemsObjectPage"}}},"controlConfiguration":{"Items/@com.sap.vocabularies.UI.v1.LineItem#Items":{"tableSettings":{"condensedTableLayout":true,"enableFullScreen":true,"type":"GridTable"}}}}},"controlAggregation":"midColumnPages","contextPattern":"/Invoices({key})"},"ItemsObjectPage":{"type":"Component","id":"ItemsObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"contextPath":"/Invoices/Items"}},"controlAggregation":"endColumnPages","contextPattern":"/Invoices({key})/Items({key2})"}}},"rootView":{"viewName":"sap.fe.templates.RootContainer.view.Fcl","type":"XML","async":true,"id":"appRootView"}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"hana.app"}}'
});
//# sourceMappingURL=Component-preload.js.map
