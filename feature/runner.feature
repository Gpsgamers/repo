#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@strip_redirection_withoutLogin_verifieduser
Feature: stripe redirection withoutLogin verifieduser
  I want to use this template for my feature file

  @signup
  Scenario: signup
    Given generate email
    When signup
    And verify email

  @monthly_to_monthly_scenario_logout_state
  Scenario Outline: monthly to basic stripe navigation
    Given set the credential to current plan <current_planid> and <current_mode> with <selected_planid>
    And choose the plan <selected_planid> and <selected_mode>
    When login
    Then page navigation <page>

    @monthly->to->monthly
    Examples: 
      | current_planid | current_mode | selected_planid | selected_mode | page       |
      |              1 | "m"          |               1 | "m"           | "onthefly" |
      |              1 | "m"          |               2 | "m"           | "stripe"   |
      |              1 | "m"          |               3 | "m"           | "stripe"   |
      |              1 | "m"          |               4 | "m"           | "stripe"   |
      |              1 | "m"          |               5 | "m"           | "stripe"   |
      |              2 | "m"          |               1 | "m"           | "onthefly" |
      |              2 | "m"          |               2 | "m"           | "onthefly" |
      |              2 | "m"          |               3 | "m"           | "stripe"   |
      |              2 | "m"          |               4 | "m"           | "stripe"   |
      |              2 | "m"          |               5 | "m"           | "stripe"   |
      |              3 | "m"          |               1 | "m"           | "onthefly" |
      |              3 | "m"          |               2 | "m"           | "onthefly" |
      |              3 | "m"          |               3 | "m"           | "onthefly" |
      |              3 | "m"          |               4 | "m"           | "stripe"   |
      |              3 | "m"          |               5 | "m"           | "stripe"   |
      |              4 | "m"          |               1 | "m"           | "onthefly" |
      |              4 | "m"          |               2 | "m"           | "onthefly" |
      |              4 | "m"          |               3 | "m"           | "onthefly" |
      |              4 | "m"          |               4 | "m"           | "onthefly" |
      |              4 | "m"          |               5 | "m"           | "stripe"   |
      |              5 | "m"          |               1 | "m"           | "onthefly" |
      |              5 | "m"          |               2 | "m"           | "onthefly" |
      |              5 | "m"          |               3 | "m"           | "onthefly" |
      |              5 | "m"          |               4 | "m"           | "onthefly" |
      |              5 | "m"          |               5 | "m"           | "onthefly" |
      |              1 | "y"          |               1 | "y"           | "onthefly" |
      |              1 | "y"          |               2 | "y"           | "stripe"   |
      |              1 | "y"          |               3 | "y"           | "stripe"   |
      |              1 | "y"          |               4 | "y"           | "stripe"   |
      |              1 | "y"          |               5 | "y"           | "stripe"   |
      |              2 | "y"          |               1 | "y"           | "onthefly" |
      |              2 | "y"          |               2 | "y"           | "onthefly" |
      |              2 | "y"          |               3 | "y"           | "stripe"   |
      |              2 | "y"          |               4 | "y"           | "stripe"   |
      |              2 | "y"          |               5 | "y"           | "stripe"   |
      |              3 | "y"          |               1 | "y"           | "onthefly" |
      |              3 | "y"          |               2 | "y"           | "onthefly" |
      |              3 | "y"          |               3 | "y"           | "onthefly" |
      |              3 | "y"          |               4 | "y"           | "stripe"   |
      |              3 | "y"          |               5 | "y"           | "stripe"   |
      |              4 | "y"          |               1 | "y"           | "onthefly" |
      |              4 | "y"          |               2 | "y"           | "onthefly" |
      |              4 | "y"          |               3 | "y"           | "onthefly" |
      |              4 | "y"          |               4 | "y"           | "onthefly" |
      |              4 | "y"          |               5 | "y"           | "stripe"   |
      |              5 | "y"          |               1 | "y"           | "onthefly" |
      |              5 | "y"          |               2 | "y"           | "onthefly" |
      |              5 | "y"          |               3 | "y"           | "onthefly" |
      |              5 | "y"          |               4 | "y"           | "onthefly" |
      |              5 | "y"          |               5 | "y"           | "onthefly" |
      |              1 | "m"          |               1 | "y"           | "onthefly" |
      |              1 | "m"          |               2 | "y"           | "stripe"   |
      |              1 | "m"          |               3 | "y"           | "stripe"   |
      |              1 | "m"          |               4 | "y"           | "stripe"   |
      |              1 | "m"          |               5 | "y"           | "stripe"   |
      |              2 | "m"          |               1 | "y"           | "onthefly" |
      |              2 | "m"          |               2 | "y"           | "onthefly" |
      |              2 | "m"          |               3 | "y"           | "stripe"   |
      |              2 | "m"          |               4 | "y"           | "stripe"   |
      |              2 | "m"          |               5 | "y"           | "stripe"   |
      |              3 | "m"          |               1 | "y"           | "onthefly" |
      |              3 | "m"          |               2 | "y"           | "onthefly" |
      |              3 | "m"          |               3 | "y"           | "onthefly" |
      |              3 | "m"          |               4 | "y"           | "stripe"   |
      |              3 | "m"          |               5 | "y"           | "stripe"   |
      |              4 | "m"          |               1 | "y"           | "onthefly" |
      |              4 | "m"          |               2 | "y"           | "onthefly" |
      |              4 | "m"          |               3 | "y"           | "onthefly" |
      |              4 | "m"          |               4 | "y"           | "onthefly" |
      |              4 | "m"          |               5 | "y"           | "stripe"   |
      |              5 | "m"          |               1 | "y"           | "onthefly" |
      |              5 | "m"          |               2 | "y"           | "onthefly" |
      |              5 | "m"          |               3 | "y"           | "onthefly" |
      |              5 | "m"          |               4 | "y"           | "onthefly" |
      |              5 | "m"          |               5 | "y"           | "onthefly" |
      |              1 | "y"          |               1 | "m"           | "onthefly" |
      |              1 | "y"          |               2 | "m"           | "stripe"   |
      |              1 | "y"          |               3 | "m"           | "stripe"   |
      |              1 | "y"          |               4 | "m"           | "stripe"   |
      |              1 | "y"          |               5 | "m"           | "stripe"   |
      |              2 | "y"          |               1 | "m"           | "onthefly" |
      |              2 | "y"          |               2 | "m"           | "onthefly" |
      |              2 | "y"          |               3 | "m"           | "stripe"   |
      |              2 | "y"          |               4 | "m"           | "stripe"   |
      |              2 | "y"          |               5 | "m"           | "stripe"   |
      |              3 | "y"          |               1 | "m"           | "onthefly" |
      |              3 | "y"          |               2 | "m"           | "onthefly" |
      |              3 | "y"          |               3 | "m"           | "onthefly" |
      |              3 | "y"          |               4 | "m"           | "stripe"   |
      |              3 | "y"          |               5 | "m"           | "stripe"   |
      |              4 | "y"          |               1 | "m"           | "onthefly" |
      |              4 | "y"          |               2 | "m"           | "onthefly" |
      |              4 | "y"          |               3 | "m"           | "onthefly" |
      |              4 | "y"          |               4 | "m"           | "onthefly" |
      |              4 | "y"          |               5 | "m"           | "stripe"   |
      |              5 | "y"          |               1 | "m"           | "onthefly" |
      |              5 | "y"          |               2 | "m"           | "onthefly" |
      |              5 | "y"          |               3 | "m"           | "onthefly" |
      |              5 | "y"          |               4 | "m"           | "onthefly" |
      |              5 | "y"          |               5 | "m"           | "onthefly" |
