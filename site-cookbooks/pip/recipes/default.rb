#
# Cookbook Name:: pip
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Package resource
package "python-setuptools" do
	action :install
end

easy_install_package "pip" do
  action :install 
end
