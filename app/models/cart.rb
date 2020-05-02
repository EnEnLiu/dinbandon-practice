class Cart
  def initialize
    @items = []
  end

  def add_item(item_id)
    @items << item_id
  end

  def emtpy?
    @items.emtpy?
  end

  def items
    @items
  end
end