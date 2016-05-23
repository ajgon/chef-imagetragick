# frozen_string_literal: true
#
# Cookbook Name:: imagetragick
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
include_recipe 'imagemagick'

template '/etc/ImageMagick/policy.xml' do
  source 'policy.xml.erb'
  mode '0644'
end
