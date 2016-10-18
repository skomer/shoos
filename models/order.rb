class Order

  attr_reader(:customer_name, :customer_address, :quantity, :size)

  def initialize(params)
    @customer_name = params['customer_name']
    @customer_address = params['customer_address']
    @quantity = params['quantity'].to_i
    @size = params['size'].to_i
  end
end