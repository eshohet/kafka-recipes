remote_directory '/etc/kafka-docker' do
  source 'kafka-docker'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end