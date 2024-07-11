By default the relay will accept events from any pubkey and any kind.

If you want to apply a policy, apply the following modifications using the File Manager.

1. Update the `writePolicy` section of the `strfry.conf` file to read like this:
```
writePolicy {
    # If non-empty, path to an executable script that implements the writePolicy plugin logic
    plugin = "/app/code/chief"
}
```
2. Update the `chief.json` file with your desired policy. For examples of policies please refer to [this url](https://github.com/0xtrr/chief/blob/master/docs/examples/example-data.json).
3. Restart the app to apply the changes.
