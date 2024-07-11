# strfry-cloudron

[strfry - a nostr relay](https://github.com/hoytech/strfry) packaged to run as a [cloudron](https://www.cloudron.io/)app. Supports event policies through the [chief plugin](https://github.com/0xtrr/chief/tree/master).

### Prerequisites
Install the [Cloudron CLI](https://docs.cloudron.io/packaging/cli/)

### Installing

The app is still not in the Cloudron App Store so right now you have to use the Cloudron CLI to install.

Grab the latest package version hash from [this page](https://github.com/sebdeveloper6952/strfry-cloudron/pkgs/container/strfry-cloudron) and run the following commands.

Authenticate the CLI with your Cloudron instance.
```
cloudron login your.instance.com
```

Install the app
```
cloudron install --image ghcr.io/sebdeveloper6952/strfry-cloudron:<version>
```
