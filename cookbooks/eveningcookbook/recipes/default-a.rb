#
# Cookbook Name:: eveningcookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info('This log is generated by Java Home')
package node['eveningcookbook']['webserver'] do
  action :install
end

user 'creating javahome user' do
  username 'javahome'
  home '/home/javahome'
  manage_home true
  shell '/bin/bash'
  password '$1$sFUk8iEz$pdZyrte0DzG.R0uAvsBAn1'
  action :remove
end

# directory '/opt/evening' do
#   action :create
#   owner 'vagrant'
#   group 'vagrant'
#   mode '0777'
# end
# file 'create a file' do
#   mode '0777'
#   owner 'vagrant'
#   group 'vagrant'
#   path '/opt/evening/javahome123.sh'
#   action :create
# end
