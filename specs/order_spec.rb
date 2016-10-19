require('minitest/autorun')
require('minitest/rg')
require('pry-byebug')
require_relative('../models/order')

class TestOrder < MiniTest::Test

  def setup
    options = {'customer_name' => 'Jo', 'customer_address' => 'The Castle', 'quantity' => 3, 'size' => 5}
    @order = Order.new(options)
  end

  def test_customer_name()
    assert_equal('Jo', @order.customer_name)
  end

  def test_quantity()
    assert_equal(3, @order.quantity)
  end

  # def test_update()
  #   assert_equal('The Citadel', )
  # end

end