# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"

control 'TB_Linux_controlID_2.5' do		
  impact 0.4
  title 'Secure SSH daemon configuration'
  desc 'Ensure PasswordAuthentication is set to no in /etc/ssh/sshd_conf'
  tag controlID: '2'
  tag checkID: '5'
  describe sshd_config do
    its('PasswordAuthentication') {should eq 'no'}
  end
end
