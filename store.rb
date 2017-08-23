
  #store_item_1 = {owner: "Elia", ice_cream: "oreo", price: 5, size: "gallon"}
  #store_item_2 = {:owner => "Elia", :ice_cream => "strawberry", :price => 3, :size => "pint"}

  #puts "#{store_item_1[:owner]} #{:ice_cream} #{:price} #{:size}"



class Store
  attr_reader :store_owner, :price
  attr_writer :ice_cream, :size

  def initialize (input_options)
    @store_owner = input_options[:owner]
    @ice_cream = input_options[:ice_cream]
    @price = input_options[:price]
    @size = input_options[:size]
  end

  def store_owner
    @store_owner
  end

  def ice_cream=(new_ice_cream)
    @ice_cream = new_ice_cream
  end

  def price
    @price
  end

  def size=(new_size)
    @size = new_size
  end
end

class Food < Store
  attr_reader :shelf_life
  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end

end

store_item_1 = Store.new(
                          owner: "Elia", 
                          ice_cream: "oreo", 
                          price: 5, 
                          size: "gallon"
                          )
store_item_2 = Store.new(
                          :owner => "Elia", 
                          :ice_cream => "strawberry", 
                          :price => 3, 
                          :size => "pint"
                          )
p store_item_1.store_owner
p store_item_2

food= Food.new(owner: "Elia", ice_cream: "oreo", price: 5, size: "gallon", shelf_life: 2)

p food.shelf_life



