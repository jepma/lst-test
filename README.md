# LST Test

This is a simple example of howto run a LST test as a systemd service on your CoreOS system. We use Docker to create the actual load.

## Start

```bash
$ sudo systemctl start lst
```

## Status

```bash
$ sudo systemctl status lst
```

## Logs

```bash
$ sudo journalctl -u lst -f
```

## Bash example

You can run this script using only bash as well. Just use the `lst.sh` script.
