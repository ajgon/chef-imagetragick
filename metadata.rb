# frozen_string_literal: true
name 'imagetragick'
maintainer 'Igor Rzegocki'
maintainer_email 'igor@rzegocki.pl'
license 'MIT'
description 'Install the policy file which (hopefully) patches the imagetragick vulnerability'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'imagemagick'

%w(fedora centos rhel ubuntu debian).each do |os|
  supports os
end

source_url 'https://github.com/ajgon/chef-imagetragick'
issues_url 'https://github.com/ajgon/chef-imagetragick/issues'
