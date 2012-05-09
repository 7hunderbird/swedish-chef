package "python-software-properties" # dep for package specific apt-repos
package "git-core" # deploy our repository

user node[:user][:name] do
  password node[:user][:password]
  home "/home/#{node[:user][:name]}"
  supports manage_home: true  
  shell "/bin/bash"
end

group "admin" do
  gid 999
  members [node[:user][:name]]
end

include_recipe "nginx::source"
include_recipe "postgresql::server_debian"