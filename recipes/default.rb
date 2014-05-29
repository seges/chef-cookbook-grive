#
# Cookbook Name:: grive
# Recipe:: default
#
# Copyright 2014, Seges
#
# All rights reserved - Do Not Redistribute
#

# http://www.thefanclub.co.za/how-to/ubuntu-google-drive-client-grive-and-grive-tools

apt_repository "grive" do
  uri "http://ppa.launchpad.net/thefanclub/grive-tools/ubuntu"
  distribution node['lsb']['codename']
  components ["main"]
  keyserver    'keyserver.ubuntu.com'
  key          '7E2426D0'
end

package "grive-tools"
