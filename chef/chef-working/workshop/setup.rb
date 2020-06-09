package 'ntp' do
	action install
end

file '/etc/motd' do
	content 'welcome to message'
	owner 'root'
	mode '0644'
end
