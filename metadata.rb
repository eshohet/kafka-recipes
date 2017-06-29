name 'kafka'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures kafka'
long_description 'Installs/Configures kafka'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'docker_compose', '~> 0.0'
