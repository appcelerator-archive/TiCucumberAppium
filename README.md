# TiCucumberAppium

A Cucumber and Appium collaboration to run automated tests for Titanium applications. Originally adapted from GitHub user Shashikant86's code [here](https://github.com/Shashikant86/cucumber-appium).

## Prerequisites

* Install Ruby requirements: `bundle install`

* Install npm requirements: `npm install`

* Build the Titanium application:
`cd TiCucumberAppium`
`ti build -p ios --build-only`

* Xcode is installed, as well as simulators (currently require iOS 10.3)

## Running Instructions

* Start an Appium server in a separate terminal window: `appium`

* Run the tests: `bundle exec cucumber features/cucumber.feature`
