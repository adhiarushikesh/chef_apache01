#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2019, The Authors, All Rights Reserved.
# ~/cookbooks/apache/recipes/server.rb
# 

package 'apache2' do
  action :purge
end

file '/var/www/html/index.html' do
  content '<h1>Hello, chefites! myfirst chef recipe</h1>'
end

service 'apache2' do
  action [:stop]
end
