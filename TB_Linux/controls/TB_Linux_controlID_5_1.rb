# Columns in final CSV / Excel sheet:
# controlID     -> "Control ID"
# title         -> "Name"
# checkID       -> "Check ID"
# desc          -> "Description"
# describe      -> "Result"

control 'TB_Linux_controlID_5.1' do
  impact 1.0
  title 'Event logging'
  desc 'Verify the implementation by reviewing the config file /etc/syslog.conf'
  tag controlID: '5'
  tag checkID: '1'

# Advice is to review the contents of the /etc/syslog-ng/syslog-ng.conf file to ensure appropriate logging is set.

  describe file('/etc/syslog-ng/syslog-ng.conf') do
    it { should be_file }
end
end


