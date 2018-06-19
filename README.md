# inControlInspec
A project space for the automation challenge game to leverage InSpec for full compliance checking. The intention of this Project is to provide a number of standard InSpec files to support administrators and security officers to quickly gain a clear view on the level of compliancy to regulatory and company security regulations. 

## components
The following components will be part of the inControlInspec solution

### InSpec
InSpec is an open source (OSS) automated testing tool for integration, compliance, security, and other policy requirements. InSpec will be used to test systems in a wider set of servers on how well they allign with 

### JQ
Jq (https://stedolan.github.io/jq/) will be used as JSON processor to post-process the InSpec JSON output.

### future ambition
The following points are not directly a part of the project (at this moment) however can be seen as future ambitions
- Automatically build XLSX based report output
- Development of a central storage and reporting solution for InSpec results (as a full open source project)


## Usage
In the root of the project you will find a Makefile.
This Makefile will contain directives for various actions.
