# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"


control 'TB_Linux_controlID_1.1' do
  impact 0.4
  title 'Encrypted remote shell access'
  desc 'Ensure telnetd package is removed'
  tag controlID: '1'
  tag checkID: '1'
  describe package('telnetd') do
    it { should_not be_installed }
  end
end
