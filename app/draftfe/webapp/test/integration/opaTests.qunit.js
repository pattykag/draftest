sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/draftfe/test/integration/FirstJourney',
		'ns/draftfe/test/integration/pages/UsersList',
		'ns/draftfe/test/integration/pages/UsersObjectPage'
    ],
    function(JourneyRunner, opaJourney, UsersList, UsersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/draftfe') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUsersList: UsersList,
					onTheUsersObjectPage: UsersObjectPage
                }
            },
            opaJourney.run
        );
    }
);