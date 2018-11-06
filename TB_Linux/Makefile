.PHONY: check csv excel-nl

check:
	inspec exec controls/ --reporter json| jq '.profiles[] | { Controls: .controls[] } | { ControlID: .Controls.tags.controlID, Name: .Controls.title, CheckID: .Controls.tags.checkID, Description: .Controls.desc, Results: .Controls.results[].status }'

csv:
	inspec exec controls/ --reporter json| jq '.profiles[] | [{ Controls: .controls[] } | { ControlID: .Controls.tags.controlID, Name: .Controls.title, CheckID: .Controls.tags.checkID, Description: .Controls.desc, Results: .Controls.results[].status }]' | jq -rf to_csv_filter.jq

excel-nl:
	inspec exec controls/ --reporter json| jq '.profiles[] | [{ Controls: .controls[] } | { ControlID: .Controls.tags.controlID, Name: .Controls.title, CheckID: .Controls.tags.checkID, Description: .Controls.desc, Results: .Controls.results[].status }]' | jq -rf to_csv_filter.jq | sed s/\",/\"\;/g

elastic_localfile:
	./make_elastic_localfile.sh

elastic_direct:
	./make_elastic_to_elastic.sh
