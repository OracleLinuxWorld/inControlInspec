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
