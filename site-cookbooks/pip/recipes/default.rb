#
# Cookbook Name:: pip
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# Package resource
=begin
package "python-setuptools" do 
  action :install
end
=end

# Execute resource
bash "curl -L https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | python" do
  code <<-EOH
    curl -L https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | python
	EOH
end 

# Execute resource
bash "curl -L https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python" do
  code <<-EOH
    curl -L https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
	EOH
end 

easy_install_package "pip" do
  action :install 
end

