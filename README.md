# strfry-cloudron

[strfry - a nostr relay](https://github.com/hoytech/strfry) packaged to run as a [cloudron](https://www.cloudron.io/)app. Supports event policies through the [chief plugin](https://github.com/0xtrr/chief/tree/master).

The app is [not yet in the Cloudron App Store](https://forum.cloudron.io/topic/12056/strfry-a-nostr-relay) so for now you have to use the Cloudron CLI to install.

### Prerequisites
Install the [Cloudron CLI](https://docs.cloudron.io/packaging/cli/) - `npm install -g cloudron`

### Installing

**Authenticate the CLI with your Cloudron instance**
```
cloudron login your.instance.com
```

**Clone the project and change into it**
```
git clone https://github.com/sebdeveloper6952/strfry-cloudron.git
cd strfry-cloudron
```

**Install the app**

Requires the latest package version hash from [this page](https://github.com/sebdeveloper6952/strfry-cloudron/pkgs/container/strfry-cloudron)  
```
cloudron install --image ghcr.io/sebdeveloper6952/strfry-cloudron:<version>
```

For example:
```
cloudron install --image ghcr.io/sebdeveloper6952/strfry-cloudron:d7593aea5ac40baa84ef27cd78cca218c0fdf195
```

You will then be prompted for a location - so put the domain, eg `strfry.yourdomain.com`
