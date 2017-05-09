require 'spec_helper'
describe 'helloworld' do
  context 'with default values for all parameters' do
    it { should contain_class('helloworld') }
    it { should contain_notify('hello puppet users!') }
  end
end
