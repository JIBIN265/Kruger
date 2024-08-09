sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'kruger/test/integration/FirstJourney',
		'kruger/test/integration/pages/InvoicesList',
		'kruger/test/integration/pages/InvoicesObjectPage',
		'kruger/test/integration/pages/ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, InvoicesList, InvoicesObjectPage, ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('kruger') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheInvoicesList: InvoicesList,
					onTheInvoicesObjectPage: InvoicesObjectPage,
					onTheItemsObjectPage: ItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);