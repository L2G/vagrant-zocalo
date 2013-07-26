# vim: ts=2:sw=2:et:

#
# Cookbook Name:: zocalo
# Recipe:: default
#
# Copyright 2013 Lawrence Leonard Gilbert
#

include_recipe 'java'

tarball_url = 'http://downloads.sourceforge.net/project/zocalo/zocalo-2011.2/zocalo-PM-2011-2-bin.tar.gz'

directory '/opt/zocalo' do
  owner 'vagrant'
  group 'users'
end

tar_extract tarball_url do
  target_dir   '/opt'
  user         'vagrant'
  group        'users'
  download_dir '/vagrant'
  not_if       { ::File.exist?('/opt/zocalo/bin/zocalo.sh') }
end

