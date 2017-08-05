#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'zsh' do
	package_name 'zsh'
	action :install
end        

package 'apache' do
	package_name 'httpd'
	action :install
end

service 'apache' do
	service_name 'httpd'
	action [:start,:enable]
end
