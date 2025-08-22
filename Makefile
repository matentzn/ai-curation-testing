# IMPORTANT: Run all make commands through ODK wrapper: sh odk.sh make <target>
# See .github/copilot-instructions.md for details

TIMESTAMP := $(shell date +"%Y-%m-%d_%H-%M-%S")

RO_URL="http://purl.obolibrary.org/obo/ro.owl"
RO_PURL_BASE="http://purl.obolibrary.org/obo/ro"

.PHONY: .FORCE

ro.owl: .FORCE
	wget $(RO_URL) -O $@

ro-annotated.owl: ro.owl
	robot annotate -i $< --version-iri $(RO_PURL_BASE)/$(TIMESTAMP) -o $@

test: ro-annotated.owl
