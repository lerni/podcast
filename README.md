# Silverstripe Podcast - WIP
Silverstripe Podcast let you manage Series & Episodes per ModelAdmin and present those per ElementPodcast [Elemental Block](https://github.com/silverstripe/silverstripe-elemental). It's supposed to integrates with "Spotify Podcasts", "iTunes Podcasts" & "Google Podcasts" and offers schema integration.

This module is inspired from https://github.com/lukereative/silverstripe-podcast but since I didn't want it to be page based, "phansys/getid3" integration didn't work and other parts just didn't fit to what I needed, this came to existence. ATM it's coupled with my project-setup `lerni/ootstra`.

## Requirements
- dnadesign/silverstripe-elemental ^4
- james-heinrich/getid3: ^1 or may ^2?

### Suggested

## Installation
[Composer](https://getcomposer.org/) is the recommended way installing Silverstripe modules.

`composer require lerni/podcast`

Run `dev/build`

## Getting started / Usage
...

# Todo
- decoupling form lerni/ootsra
    - Urlify & meta translations
    - PerLineText is missing
- get ID3 Tags in onBefore Write if fields are empty & save all with button instead of getting
- allow external URLs/Videos
