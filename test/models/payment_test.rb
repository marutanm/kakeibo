require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Payment Model" do
  it 'can construct a new instance' do
    @payment = Payment.new
    refute_nil @payment
  end
end
