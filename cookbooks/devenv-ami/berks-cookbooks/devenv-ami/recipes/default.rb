#
# Cookbook:: devenv-ami
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# updates apt sources and installs python and pip
apt_update
package ["python3.6", "python3-pip"]

# # Creates init folders to allow main.py to access subfolders
# file '/home/ubuntu/code/src/__init__.py' do
#   action :create
# end
#
# file '/home/ubuntu/code/src/csv_generators/__init__.py' do
#   action :create
# end
#
# file '/home/ubuntu/code/src/itjobswatch_html_readers/__init__.py' do
#   action :create
# end

# Ensures pytest has write permission to path of Downloads folder

# directory '/' do
#   action :create
#   mode '0777'
# end
#
# directory '/vagrant/' do
#   action :create
#   mode '0777'
# end

# Creates app folder
directory '/home/ubuntu/code/' do
  action :create
  mode '0777'
end

template '/home/ubuntu/code/requirements.txt' do
  source 'requirements.txt.erb'
  owner 'root'
  group 'root'
  mode '0777'
end

# Installs requirements as listed in requirements.txt
execute "install requirements" do
  command "sudo -H pip3 install -r /home/ubuntu/code/requirements.txt"
end

# Installs pytest to allow test to be run
execute "install pytest" do
  command "sudo -H pip3 install pytest"
end

file '/home/ubuntu/code/requirements.txt' do
  action :delete
end

directory '/home/ubuntu/code/' do
  action :delete
end
