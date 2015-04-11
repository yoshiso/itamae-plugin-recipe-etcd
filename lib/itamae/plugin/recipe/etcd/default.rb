include_recipe './attributes.rb'

# create user
user "etcd" do
  action :create
end
execute "disable user shell" do
  command "usermod -s /sbin/nologin etcd"
end

# create dirs
directory node['etcd']['data_dir'] do
  action :create
  owner "etcd"
end

# file
template "#{node['etcd']['systemd_dir']}/etcd.service" do
  source File.expand_path(File.dirname(__FILE__)) + '/templates/etcd.service.erb'
  variables node['etcd']
  mode "755"
  owner "root"
end

template "/etc/profile.d/etcdctl.sh" do
  variables node['etcdctl']
  owner 'root'
  mode '755'
end

execute "install etcd" do

  command <<-EOH
cd /tmp
curl -L #{node['etcd']['binary_url']} -o etcd-v#{node['etcd']['version']}-linux-amd64.tar.gz
tar xzvf etcd-v#{node['etcd']['version']}-linux-amd64.tar.gz
cd etcd-v#{node['etcd']['version']}-linux-amd64
mv etcd #{node['etcd']['install_dir']}/etcd
mv etcdctl #{node['etcd']['install_dir']}/etcdctl
rm -rf etcd-v#{node['etcd']['version']}-linux-amd64
EOH
  not_if "test -e #{node['etcd']['install_dir']}/etcd && #{node['etcd']['install_dir']}/etcd --version | grep -q '#{node['etcd']['version']}' "

end
