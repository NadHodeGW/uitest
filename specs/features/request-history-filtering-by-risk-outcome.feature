@request-history-filtering-by-risk-outcome
Feature: request-history-filtering-by-risk-outcome
    As a admin I need to validate file requests history filtering by risk outcome in order to confirm that the solution works as expected

    Background:
        Given I am logged into the ui


    @TEST-164
    Scenario Outline: I can filter the log by file risks
        Given I have navigated to the Request History page
        When I click on the Add Filter button and add a risk filter as '<filter>'
        Then the result list only shows filtered files with the selected risk as '<filteredFile>'
        Examples:
            | filter            | filteredFile      |
            | Blocked By Policy | Blocked By Policy |
            | Blocked By NCFS   | Blocked By NCFS   |
            | Safe              | Safe              |
            | Allowed By Policy | Allowed by Policy |
            | Allowed By NCFS   | Allowed by NCFS   |