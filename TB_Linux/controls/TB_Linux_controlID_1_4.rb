# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"

control 'TB_Linux_controlID_1.4' do
  impact 0.4
  title 'Encrypted remote shell access'
  desc 'Ensure root login for SSH is disabled'
  tag controlID: '1'
  tag checkID: '4'
  describe sshd_config do
    its('PermitRootLogin') {should eq 'no'}
  end
end
