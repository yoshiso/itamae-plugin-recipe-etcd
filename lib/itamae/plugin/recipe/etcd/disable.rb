include_recipe './attributes.rb'

service 'etcd' do
  action [:disable, :stop]
end
