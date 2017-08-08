@mod @mod_customcert
Feature: Being able to add/edit/delete and move elements on a custom certificate
  In order to test managing elements in a custom certificate works as expected
  As a teacher
  I need to manage elements in a custom certificate

  Background:
    Given the following "courses" exist:
      | fullname | shortname | category | groupmode |
      | Course 1 | C1 | 0 | 1 |
    And the following "users" exist:
      | username | firstname | lastname | email |
      | teacher1 | Teacher | 1 | teacher1@example.com |
    And the following "course enrolments" exist:
      | user | course | role |
      | teacher1 | C1 | editingteacher |
    And the following "activities" exist:
      | activity   | name                 | intro                      | course | idnumber    |
      | customcert | Custom certificate 1 | Custom certificate 1 intro | C1     | customcert1 |
    And I log in as "teacher1"
    And I am on "Course 1" course homepage
    And I follow "Custom certificate 1"
    And I navigate to "Edit custom certificate" in current page administration

  @javascript
  Scenario: Adding and editing elements in a custom certificate
    # Background image.
    And I add the element "Background image" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Background image" in the "elementstable" "table"
    # Border
    And I add the element "Border" to page "1" of the "Custom certificate 1" certificate
    And I set the field "Width" to "2"
    And I press "Save changes"
    And I should see "Border" in the "elementstable" "table"
    # Category name
    And I add the element "Category name" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Category name" in the "elementstable" "table"
    # Code
    And I add the element "Code" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Code" in the "elementstable" "table"
    # Course name
    And I add the element "Course name" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Course name" in the "elementstable" "table"
    # Date
    And I add the element "Date" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Date" in the "elementstable" "table"
    # Grade
    And I add the element "Grade" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Grade" in the "elementstable" "table"
    # Grade item name
    And I add the element "Grade item name" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Grade item name" in the "elementstable" "table"
    # Image
    And I add the element "Image" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Image" in the "elementstable" "table"
    # Student name
    And I add the element "Student name" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Student name" in the "elementstable" "table"
    # Teacher name
    And I add the element "Teacher name" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Teacher name" in the "elementstable" "table"
    # Text
    And I add the element "Text" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "Text" in the "elementstable" "table"
    # User field
    And I add the element "User field" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "User field" in the "elementstable" "table"
    # User picture
    And I add the element "User picture" to page "1" of the "Custom certificate 1" certificate
    And I press "Save changes"
    And I should see "User picture" in the "elementstable" "table"
