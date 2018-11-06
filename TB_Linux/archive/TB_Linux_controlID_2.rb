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

control 'TB_Linux_controlID_2.2' do
  impact 0.4
  title 'Secure SSH daemon configuration'	
  desc 'Ensure that /etc/issue.net is owned by root user'
  tag controlID: '2'
  tag checkID: '2'
  describe file('/etc/issue.net') do
    its('owner') { should cmp 'root' }
  end
end

control 'TB_Linux_controlID_2.3' do
  impact 0.4
  title 'Secure SSH daemon configuration'	
  desc 'Ensure that /etc/issue.net is only writable by its owner (0644)'
  tag controlID: '2'
  tag checkID: '3'
  describe file('/etc/issue.net') do
    its('mode') { should cmp '0644' }
  end
end

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

