include_recipe 'docker_compose::installation'

# Provision Compose application
docker_compose_application 'kafka' do
  action :up
  compose_files [ '/etc/kafka-docker/docker-compose.yml' ]
end
