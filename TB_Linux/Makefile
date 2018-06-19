.PHONY: check

check:
	inspec exec controls/ --reporter json-min | jq '.controls[] | {(.id): .status}'

