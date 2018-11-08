# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"


control 'TB_Linux_controlID_2.2' do
  impact 0.4
  title 'Secure SSH daemon configuration'
  desc 'Ensure that /etc/issue.net is owned by root user'
  tag controlID: '2'
  tag checkID: '2'
  describe file('/etc/issue.net') do
    its('owner') { should cmp 'root' }
  end
end
