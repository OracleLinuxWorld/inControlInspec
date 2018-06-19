# inControlInspec
A project space for the automation challenge game to leverage InSpec for full compliance checking. The intention of this Project is to provide a number of standard InSpec files to support administrators and security officers to quickly gain a clear view on the level of compliancy to regulatory and company security regulations. 

## components
The following components will be part of the inControlInspec solution

### InSpec
InSpec is an open source (OSS) automated testing tool for integration, compliance, security, and other policy requirements. InSpec will be used to test systems in a wider set of servers on how well they align with a predefined technical baseline.

### JQ
Jq (https://stedolan.github.io/jq/) will be used as JSON processor to post-process the InSpec JSON output.

### future ambition
The following points are not directly a part of the project (at this moment) however can be seen as future ambitions
- Automatically build XLSX based report output
- Development of a central storage and reporting solution for InSpec results (as a full open source project)


## Usage
In the root of the project you will find a Makefile.
This Makefile will contain directives for various actions.

Run the following command:

```
$ make check
inspec exec controls/ --reporter json| jq '.profiles[] | { Controls: .controls[] } | { ControlID: .Controls.tags.controlID, Name: .Controls.title, CheckID: .Controls.tags.checkID, Description: .Controls.desc, Results: .Controls.results[].status }'
```

for results looking like the following:

```
{
  "ControlID": "6",
  "Name": "Event logging storage and protection",
  "CheckID": "1",
  "Description": "Various checks regarding /var/log",
  "Results": "passed"
}
{
  "ControlID": "0",
  "Name": "Handling of removable media (physical and virtual)",
  "CheckID": "1",
  "Description": "Verify that /etc/modprobe.d is a directory",
  "Results": "passed"
}
{
  "ControlID": "0",
  "Name": "Handling of removable media (physical and virtual)",
  "CheckID": "2",
  "Description": "Verify that /etc/modprobe.d and underlying files have mode 0755 and are only writeable by owner",
  "Results": "passed"
}
{
  "ControlID": "0",
  "Name": "Handling of removable media (physical and virtual)",
  "CheckID": "3",
  "Description": "Verify that /etc/modprobe.d and underlying files are owned by the root user",
  "Results": "passed"
}
```

