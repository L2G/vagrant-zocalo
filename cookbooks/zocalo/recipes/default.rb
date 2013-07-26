# vim: ts=2:sw=2:et:

#
# Cookbook Name:: zocalo
# Recipe:: default
#
# Copyright 2013 Lawrence Leonard Gilbert
#

include_recipe 'java'
include_recipe 'subversion::client'

application 'zocalo' do
  path         '/opt/zocalo'
  owner        'vagrant'
  group        'users'
  scm_provider Chef::Provider::Subversion
  repository   'http://svn.code.sf.net/p/zocalo/code/tags/2011.1'
end

