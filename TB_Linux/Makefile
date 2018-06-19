.PHONY: check

check:
	inspec exec controls/ --reporter json| jq '.profiles[] | { Controls: .controls[] } | { ControlID: .Controls.tags.controlID, Name: .Controls.title, CheckID: .Controls.tags.checkID, Description: .Controls.desc, Results: .Controls.results[].status }'
