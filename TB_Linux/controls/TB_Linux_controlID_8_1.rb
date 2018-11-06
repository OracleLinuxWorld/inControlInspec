# Columns in final CSV / Excel sheet:
# controlID     -> "Control ID"
# title         -> "Name"
# checkID       -> "Check ID"
# desc          -> "Description"
# describe      -> "Result"

control 'TB_Linux_controlID_8.1' do
  impact 1.0
  title 'Clock synchronisation'
  desc 'Verify that the NTP source servers are mentiond in /etc/ntp.conf'
  tag controlID: '8'
  tag checkID: '1'

  describe file('/etc/ntp.conf') do
    its(:content) { should match %r{^restrict (-4)?\s*default \w+} }
    its(:content) { should match %r{^restrict -6 default \w+} }
  end
  # restrict -4 default
  describe command('grep "^restrict" /etc/ntp.conf | grep -v "\-6"') do
    its(:stdout) { should match 'kod' }
    its(:stdout) { should match 'nomodify' }
    its(:stdout) { should match 'notrap' }
    its(:stdout) { should match 'nopeer' }
    its(:stdout) { should match 'noquery' }
  end
  # restrict -6 default
  describe command('grep "^restrict" /etc/ntp.conf | grep "\-6"') do
    its(:stdout) { should match 'kod' }
    its(:stdout) { should match 'nomodify' }
    its(:stdout) { should match 'notrap' }
    its(:stdout) { should match 'nopeer' }
    its(:stdout) { should match 'noquery' }
  end
  describe file('/etc/ntp.conf') do
    its(:content) { should match %r{^server\s+\w+} }
  end
  describe file('/etc/init.d/ntp') do
    its(:content) { should match '^RUNASUSER=ntp' }
  end
end
