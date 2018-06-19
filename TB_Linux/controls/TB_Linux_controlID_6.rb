title 'Handling of logging'

control 'TB_Linux_controlID_6.1' do		# A unique ID for this control
  impact 0.4                                	
  title 'Verify that /var/log and underlying files are only writeable by the root user'
  desc 'Various checks regarding /var/log'
  tag controlID: '6'
  tag checkID: '1'

  describe file('/var/log') do
    its('owner') { should cmp 'root' }
  end

end


