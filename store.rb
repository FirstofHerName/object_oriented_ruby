
  #store_item_1 = {owner: "Elia", ice_cream: "oreo", price: 5, size: "gallon"}
  #store_item_2 = {:owner => "Elia", :ice_cream => "strawberry", :price => 3, :size => "pint"}

  #puts "#{store_item_1[:owner]} #{:ice_cream} #{:price} #{:size}"

  module CoolStore
    module Surgeable
      def  price_gauge 
        @price = @price * 1.1
      end
    end


module CoolStore
  class Store
    include Surgeable
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
end

module CoolStore
  class Food < Store
    include Surgeable
    attr_reader :shelf_life
    def initialize(input_options)
      super
      @shelf_life = input_options[:shelf_life]
    end

  end
end
end


module Cool_store
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
end

p store_item_1.price_gauge
p store_item_2.price_gauge

food= CoolStore::Food.new(owner: "Elia", ice_cream: "oreo", price: 5, size: "gallon", shelf_life: 2)




