# Columns in final CSV / Excel sheet:
# controlID     -> "Control ID"
# title         -> "Name"
# checkID       -> "Check ID"
# desc          -> "Description"
# describe      -> "Result"

control 'TB_Linux_controlID_3.1' do
  impact 1.0
  title 'Network Segregation'
  desc 'Verify that all local IP tables block all inbound and outbound traffic by default (except exceptions)'
  tag controlID: '3'
  tag checkID: '1'
#Is iptables installed and running?
  describe package('iptables') do
    it { should be_running }
  end
#is all inbound and outbound trafic blocked by default?
	describe iptables do
		it { should have_rule('-P INPUT DROP') }
		it { should have_rule('-P OUTPUT DROP') }
		it { should have_rule('-P FORWARD DROP') }
	end
end

control 'TB_Linux_controlID_3.2' do
  impact 1.0
  title 'Network Segregation'
  desc 'Verify that no services have a network port in listening port active (except exceptions)'
  tag controlID: '3'
  tag checkID: '2'
listening_ports = command('netstat -lntu4 | grep -v -E "127.0.0.|^Active|^Proto"').stdout.split("\n")
	describe iptables do
    listening_ports.each do |line|
      protocol = line.split()[0]
      port = line.split()[3].gsub(/.*:(\d)/, '\1')
			it { should have_rule("-A INPUT -p #{protocol} --dport #{port} -m state --state NEW -j ACCEPT") }
    end
	end
end
