class FakeReceipt
  attr_reader :description, :price, :taxes, :total

  def initialize
    @description=''
    @price=-1
    @taxes=-1
    @total=-1
  end

  def add(description, price)
    @description = description
    @price = price
  end

  def print(taxes, total)
    @taxes = taxes
    @total = total
  end
end