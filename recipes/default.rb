#
# Cookbook Name:: libs_in_resources
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

inspec 'inspec' do
  version node['audit']['inspec_version']
  action :install
end
