%w(
  plugins
).each do |dir|
  directory "#{node[:jenkins_home]}/#{dir}" do
    mode  "755"
    owner "jenkins"
    group "jenkins"
  end
end

%w(
  plugins/dummy.hpi
  plugins/dummy.hpi.pinned
  plugins/dummy.jpi
  plugins/dummy.jpi.pinned
).each do |file|
  remote_file "#{node[:jenkins_home]}/#{file}" do
    mode  "644"
    owner "jenkins"
    group "jenkins"
  end
end
