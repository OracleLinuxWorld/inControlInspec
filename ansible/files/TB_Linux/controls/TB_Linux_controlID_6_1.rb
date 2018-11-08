# Columns in final CSV / Excel sheet:
# controlID	-> "Control ID"
# title		-> "Name"
# checkID	-> "Check ID"
# desc		-> "Description"
# describe	-> "Result"

control 'TB_Linux_controlID_6.1' do		
  impact 0.4                                	
  title 'Event logging storage and protection'
  desc 'Various checks regarding /var/log'
  tag controlID: '6'
  tag checkID: '1'
  describe file('/var/log') do
    its('owner') { should cmp 'root' }
  end
end
