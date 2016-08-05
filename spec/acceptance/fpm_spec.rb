require 'spec_helper'

describe 'fpm' do
  describe package('fpm') do
    it { should be_installed.by('gem') }
  end

  describe command('/usr/local/bin/fpm --version') do
    its(:exit_status) { should eq 0 }
  end
end
