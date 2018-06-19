.PHONY: check

check:
	inspec exec controls/ --reporter json-min | jq '.controls[]' | jq '{(.id): .status}'

