# OS X Workflow

This is a very *rough* script that automatically sets up app windows according to my main web development workflow, depending on the monitor setup I'm using.

## Apps

The following apps are being set up:

* Sublime Text
* Sequel Pro
* Google Chrome
* iTerm

## Scenarios

### Scenario 1: Thunderbolt Display

If the script detects a Thunderbolt Display it will tile the app windows up as follows:

* Sublime Text: 1st half of first screen
* Google Chrome: 2nd half of first screen
* iTerm: 1st half of second screen
* Sequel Pro: 2nd half of second screen

### Scenario 2: No external monitors

All of the above apps will be launched in fullscreen

## Installation instructions

Clone this repository somewhere and execute `workflow.sh` when you want the windows to be sized

## Limitations

Not all of the apps supports detection if whether it's already full screen or not, which can cause some issues.