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


