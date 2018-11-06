# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"


control 'TB_Linux_controlID_2.3' do
  impact 0.4
  title 'Secure SSH daemon configuration'
  desc 'Ensure that /etc/issue.net is only writable by its owner (0644)'
  tag controlID: '2'
  tag checkID: '3'
  describe file('/etc/issue.net') do
    its('mode') { should cmp '0644' }
  end
end
