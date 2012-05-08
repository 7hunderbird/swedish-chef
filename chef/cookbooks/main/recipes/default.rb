package "python-software-properties" # dep for package specific apt-repos
package "git-core" # deploy our repository

user node[:user][:name] do
  password node[:user][:password]
  gid "sudo"
  home "/home/#{node[:user][:name]}"
  supports manage_home: true  
  shell "/bin/bash"
end