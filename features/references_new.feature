Feature: User can add an article reference to the system

Scenario: User can add an article reference to the system
  Given: User goes to new reference page
  And User fills Key: M17
  And User fills Entry type: article
  And User fills Author: Moilanen J.
  And User fills Title: Test of BibTex
  And User fills Journal: ABC
  And User fills Year: 2017
  And User fills Volume: 1
  And User fills Number: 1
  And User fills Pages: 1-99
  And User fills Month: 4
  And User fills Address: Helsinki
  And User fills Organization: Univ. Helsinki
  When User clicks Create Reference
  Then System displays message "Reference was successfully created."

