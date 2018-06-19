title 'Handling of removable media'

control 'TB_Linux_controlID_0.1' do		# A unique ID for this control
  impact 0.4                                	
  title 'Verify that /etc/modprobe.d and underlying files are only writeable by the root user'
  desc 'Various checks regarding modprobe.d modules for loadable modules for eg floppy, USB disk etc'
  tag controlID: '0'
  tag checkID: '1'
  describe file('/etc/modprobe.d') do       
    it { should be_directory }
  end
end


control 'TB_Linux_controlID_0.2' do		# A unique ID for this control
  impact 0.4                                	
  title 'Verify that /etc/modprobe.d and underlying files are only writeable by the root user'
  desc 'Various checks regarding modprobe.d modules for loadable modules for eg floppy, USB disk etc'
  tag controlID: '0'
  tag checkID: '2'
  describe file('/etc/modprobe.d') do       
    its('mode') { should cmp '0755' }
  end
end


control 'TB_Linux_controlID_0.3' do		# A unique ID for this control
  impact 0.4                                	
  title 'Verify that /etc/modprobe.d and underlying files are only writeable by the root user'
  desc 'Various checks regarding modprobe.d modules for loadable modules for eg floppy, USB disk etc'
  tag controlID: '0'
  tag checkID: '3'
  describe file('/etc/modprobe.d') do
    its('owner') { should cmp 'root' }
  end
end


