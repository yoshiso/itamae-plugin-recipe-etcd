include_recipe './attributes.rb'

service 'etcd' do
  action [:enable, :start]
end
