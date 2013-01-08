#!/usr/bin/env rspec

require 'spec_helper'

describe 'sunappserver' do

  context "with RedHat as OS" do
    let (:facts) {{ :osfamily=> 'RedHat' }}

    context "and with appserver_version => 9.1.01" do
      let (:params) {{ :appserver_version => '9.1.01' }}
      it { should include_class('sunappserver::params') }
      it { should contain_class('sunappserver') }
    end

  end

end
