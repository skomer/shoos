require_relative '../db/sql_runner.rb'

class Order

  attr_accessor :customer_name, :customer_address, :quantity, :size
  attr_reader :id

  def initialize(params)
    @id = nil || params['id'].to_i
    @customer_name = params['customer_name']
    @customer_address = params['customer_address']
    @quantity = params['quantity'].to_i
    @size = params['size'].to_i
  end

  def save()
    sql = "INSERT INTO orders (customer_name, customer_address, quantity, size)
      VALUES ('#{@customer_name}', '#{@customer_address}', #{@quantity}, #{@size})
      RETURNING *"
    result = SqlRunner.run(sql)
    @id = result.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM orders"
    result = SqlRunner.run(sql)
    orders = result.map {|order| Order.new(order)}
    return orders
  end

  def update()
    sql = "
      UPDATE orders
      SET customer_name = '#{@customer_name}',
        customer_address = '#{@customer_address}',
        quantity = '#{@quantity}',
        size = '#{@size}'
      WHERE id = #{@id}
    ;"
    return SqlRunner.run(sql)
  end

end





