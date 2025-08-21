# How to run tasks

## ODK wrapper

Most commands you run using ontology tools such as ROBOT, and all `make` commands must be executed through the odk.sh script.

For example, the make command `make test` should be run like this:

```
sh odk.sh make test
```

The odk.sh script essentially wraps the ODK docker container which has a lot of ontology tools installed.

## Make targets

- `make test` — run all tests

## Environment

- Requires GNU Make
- Requires Docker

## Conventions

- Use `sh odk.sh make <target>` from repo root
