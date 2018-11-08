# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"


control 'TB_Linux_controlID_2.4' do
  impact 0.4
  title 'Secure SSH daemon configuration'
  desc 'Ensure Banner option is referring to /etc/issue.net'
  tag controlID: '2'
  tag checkID: '4'
  describe sshd_config do
    its('Banner') {should eq '/etc/issue.net'}
  end
end
