#
# Cookbook Name:: passenger-rbenv-nginx
# Recipe:: default
#
# Copyright 2016, Kemal Akkoyun
#
# All rights reserved - Do Not Redistribute
#

execute "update-upgrade" do
  command "apt-get update && apt-get upgrade -y"
  action :run
end

execute "install nginx" do
  command "apt-get install -y nginx-extras"
  action :run
  end

execute "install passenger" do
  command "apt-get install -y passenger"
  action :run
end

service "nginx" do
  action [:enable, :start]
end

execute "install curl with ssl support" do
  command "apt-get install libcurl4-openssl-dev"
  action :run
end

execute "install rack" do
  command "gem install rack"
  action :run
end
