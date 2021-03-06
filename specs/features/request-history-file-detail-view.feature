@request-history-file-detail-view
Feature: request-history-file-detail-view
    As a admin I need to validate request histrory file details view for issue, sanitization and remedy items as well as applied content management policy
    in order to confirm that the solution works as expected

    
    @TEST-169
    Scenario: I am able to view more detail on a file
        Given I am logged into the portal
        And I have navigated to the Request History page
        When I click on a available file record with id '11111111 - 1111 - 1111 - 1111 - 11111111111'
        Then the file detail view opens with the '11111111 - 1111 - 1111 - 1111 - 11111111111' displayed at the top
        And the issue items, sanitisation items, remedy items, and content management policy sections are available