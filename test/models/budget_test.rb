require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Budget Model" do
  it 'can construct a new instance' do
    @budget = Budget.new
    refute_nil @budget
  end

  it 'update_total return total' do
    @budget = Budget.create(yearmonth: '201202')
    @budget.payments.create(price: 100)
    @budget.update_total
    assert(100 == @budget.total)

    @budget.payments.create(price: 20)
    @budget.update_total
    assert(120 == @budget.total)
  end
end
