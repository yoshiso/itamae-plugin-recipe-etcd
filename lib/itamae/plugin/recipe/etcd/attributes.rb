node['etcd'] ||= {}

# modify as you want but require 2.0.0 >=
node['etcd']['version']         ||= '2.0.9'

node['etcd']['binary_baseurl']  ||= "https://github.com/coreos/etcd/releases/download"
node['etcd']['binary_url']      ||= "#{node['etcd']['binary_baseurl']}/v#{node['etcd']['version']}/etcd-v#{node['etcd']['version']}-linux-amd64.tar.gz"
node['etcd']['install_dir']     ||= '/usr/local/bin'
node['etcd']['data_dir']        ||= '/var/lib/etcd'
node['etcd']['systemd_dir']     ||= '/etc/systemd/system'

# etcd server name
node['etcd']['name']                        ||= "%H"

node['etcd']['discovery']                   ||= node['etcd']['discovery']

# config for secure etcd cluster if needed
node['etcd']['ca_file']                     ||= nil
node['etcd']['cert_file']                   ||= nil
node['etcd']['key_file']                    ||= nil
node['etcd']['peer_ca_file']                ||= nil
node['etcd']['peer_cert_file']              ||= nil
node['etcd']['peer_key_file']               ||= nil


node['etcdctl'] ||= {}
