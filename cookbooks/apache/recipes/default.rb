#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'zsh' do
	package_name 'zsh'
	action :install
end        

if node['platform_family'] == "rhel"
package = "http"
elseif node['platform_family'] == "debain"
package = "apache2"
end
package 'apache' do
	package_name 'httpd'
	action :install
end

service 'apache' do
	service_name 'httpd'
	action [:start,:enable]
end
