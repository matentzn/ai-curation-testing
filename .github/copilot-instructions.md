# ⚠️ CRITICAL: Read This First

## MANDATORY ODK wrapper

**NEVER run commands directly. ALL commands MUST use the ODK wrapper.**

Most commands you run using ontology tools such as ROBOT, and all `make` commands must be executed through the odk.sh script.

For example, the make command `make test` should be run like this:

```
sh odk.sh make test
```

robot should be run like this (COMMAND is the command you want to run):

```
sh odk.sh robot COMMAND
```

The odk.sh script essentially wraps the ODK docker container which has a lot of ontology tools installed.

## Make targets

- `make test` — run all tests

## Environment

- Requires GNU Make
- Requires Docker

## Conventions

- Use `sh odk.sh make <target>` from repo root
- **NEVER** try to remove any files or clean up after running commands.
