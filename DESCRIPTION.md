# strfry - a nostr relay

![strfry logo](docs/strfry.svg)

strfry is a relay for the [nostr protocol](https://github.com/nostr-protocol/nostr)

* Supports most applicable NIPs: 1, 2, 4, 9, 11, 12, 15, 16, 20, 22, 28, 33, 40
* No external database required: All data is stored locally on the filesystem in LMDB
* Hot reloading of config file: No server restart needed for many config param changes
* Zero downtime restarts, for upgrading binary without impacting users
* Websocket compression: permessage-deflate with optional sliding window, when supported by clients
* Built-in support for real-time streaming (up/down/both) events from remote relays, and bulk import/export of events from/to jsonl files
* [negentropy](https://github.com/hoytech/negentropy)-based set reconcilliation for efficient syncing with remote relays
