# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"

control 'TB_Linux_controlID_1.2' do
  impact 0.4
  title 'Encrypted remote shell access'
  desc 'Ensure telnet client program is removed'
  tag controlID: '1'
  tag checkID: '2'
  describe package('telnet') do
    it { should_not be_installed }
  end
end
