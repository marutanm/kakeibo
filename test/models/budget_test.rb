require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Budget Model" do
  it 'can construct a new instance' do
    @budget = Budget.new
    refute_nil @budget
  end
end
