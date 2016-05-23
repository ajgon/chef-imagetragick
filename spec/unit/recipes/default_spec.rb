# frozen_string_literal: true
#
# Cookbook Name:: imagetragick
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'imagetragick::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'creates policy.xml' do
      %w(EPHEMERAL URL HTTPS MVG MSL TEXT SHOW WIN PLT).each do |pattern|
        expect(chef_run)
          .to render_file('/etc/ImageMagick/policy.xml')
          .with_content("<policy domain=\"coder\" rights=\"none\" pattern=\"#{pattern}\" />")
      end
    end
  end
end
