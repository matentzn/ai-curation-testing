# IMPORTANT: Run all make commands through ODK wrapper: sh odk.sh make <target>
# See .github/copilot-instructions.md for details

ro.owl:
	robot convert -I http://purl.obolibrary.org/obo/ro.owl -o $@

test: ro.owl