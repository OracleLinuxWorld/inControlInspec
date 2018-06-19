# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"


control 'TB_Linux_controlID_0.1' do		
  impact 0.4                                	
  title 'Handling of removable media (physical and virtual)'	
  desc 'Verify that /etc/modprobe.d is a directory'		
  tag controlID: '0'						
  tag checkID: '1'						
  describe file('/etc/modprobe.d') do       
    it { should be_directory }				 	
  end
end


control 'TB_Linux_controlID_0.2' do		
  impact 0.4                                	
  title 'Handling of removable media (physical and virtual)'
  desc 'Verify that /etc/modprobe.d and underlying files have mode 0755 and are only writeable by owner'
  tag controlID: '0'
  tag checkID: '2'
  describe file('/etc/modprobe.d') do       
    its('mode') { should cmp '0755' }
  end
end


control 'TB_Linux_controlID_0.3' do		
  impact 0.4                                	
  title 'Handling of removable media (physical and virtual)'
  desc 'Verify that /etc/modprobe.d and underlying files are owned by the root user'
  tag controlID: '0'
  tag checkID: '3'
  describe file('/etc/modprobe.d') do
    its('owner') { should cmp 'root' }
  end
end
