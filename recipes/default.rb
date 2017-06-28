#
# Cookbook:: kafka
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'docker_compose::installation'

remote_directory '/etc/kafka-docker' do
  source 'kafka-docker'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

# Provision Compose application
docker_compose_application 'kafka' do
  action :up
  compose_files [ '/etc/kafka-docker/docker-compose.yml' ]
end
