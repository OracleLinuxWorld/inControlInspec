# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"


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
