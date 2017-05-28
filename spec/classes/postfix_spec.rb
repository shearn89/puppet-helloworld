require 'spec_helper'
describe 'helloworld::postfix' do

  context 'with postfix installed' do
    let (:facts) do { :postfix_installed => true } end
    it { should { contain_file_line('postfix-local-only') } }
  end

  context 'without postfix installed' do
    let (:facts) do { :postfix_installed => false } end
    it { should_not { contain_file_line('postfix-local-only') } }
  end
end
