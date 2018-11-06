# Columns in final CSV / Excel sheet:
# controlID     -> "Control ID"
# title         -> "Name"
# checkID       -> "Check ID"
# desc          -> "Description"
# describe      -> "Result"

control 'TB_Linux_controlID_8.2' do
  impact 1.0
  title 'Clock synchronisation'
  desc 'Verify that ntpdate is running'
  tag controlID: '8'
  tag checkID: '2'

    describe package('ntp') do
      it { should be_installed }
end
end
