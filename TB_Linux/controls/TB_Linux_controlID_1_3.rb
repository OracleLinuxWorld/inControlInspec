# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"

control 'TB_Linux_controlID_1.3' do
  impact 0.4
  title 'Encrypted remote shell access'
  desc 'Ensure SSH daemon is activated'
  tag controlID: '1'
  tag checkID: '3'
  describe systemd_service('sshd') do
    it { should be_running }
  end
end
