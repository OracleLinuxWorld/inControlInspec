# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"


control 'TB_Linux_controlID_2.1' do
  impact 0.4
  title 'Secure SSH daemon configuration'
  desc 'Ensure /etc/issue.net contains reference to Dutch law'
  tag controlID: '2'
  tag checkID: '1'
  describe file('/etc/issue.net') do
    its('content') { should match /.*Dutch.*law.*/ }
  end
end
