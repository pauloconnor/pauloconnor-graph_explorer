require 'spec_helper'
describe 'graph_explorer' do

  context 'with defaults for all parameters' do
    it { should contain_class('graph_explorer') }
  end
end
