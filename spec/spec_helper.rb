require 'serverspec'

set :backend, :exec

def compose()
  set :os, family: :redhat
  set :backend, :docker
  @image = `docker-compose build`.split(' ')[-1]
  dock_name = `docker-compose up 2>&1 1>/dev/null`.split("\n")[1].split(' ')[-1]
  @container = Docker::Container.get(dock_name)
  set :docker_container, @container.id
end
