# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"


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
