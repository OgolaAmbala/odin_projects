# frozen_string_literal: true

# Basic classes for products and categories
# Define a Product class
class Product
  # Create getter and setter methods for name, description, price, and category
  attr_accessor :name, :description, :price, :category

  # Initialize method for Product class, taking name, description, price, and category as parameters
  def initialize(name, description, price, category)
    @name = name
    @description = description
    @price = price
    @category = category
  end

  # Custom string representation of the product
  def to_s
    "#{@name} - #{@description} - £#{@price} - Category: #{@category.name}"
  end
end

# Define a Category class
class Category
  # Create getter and setter methods for name and products
  attr_accessor :name, :products

  # Initialize method for Category class, taking name as a parameter
  def initialize(name)
    @name = name
    # Initialize an empty array to hold products
    @products = []
  end

  # Method to add a product to the category
  def add_product(product)
    @products << product
  end

  # Method to remove a product from the category
  def remove_product(product)
    @products.delete(product)
  end

  # Custom string representation of the category, including the number of products it contains
  def to_s
    "#{@name} - #{product_count} products"
  end

  private

  # Private method to get the count of products in the category
  def product_count
    @products.size
  end
end

# Simple management system to interact with the classes
class PIM
  attr_accessor :categories # Attribute accessor for categories

  def initialize
    @categories = [] # Initialize categories array
  end

  def add_category(category)
    @categories << category # Add a category to the categories array
  end

  def remove_category(category)
    @categories.delete(category) # Remove a category from the categories array
  end

  def list_categories
    @categories.each do |category| # Iterate over each category in categories array
      puts category # Print each category
    end
  end

  def list_products
    @categories.each do |category| # Iterate over each category in categories array
      category.products.each do |product| # Iterate over each product in the category
        puts product # Print each product
      end
    end
  end
end

# Sample data to test the system
# Create categories
electronics_category = Category.new('Electronics')
clothing_category = Category.new('Clothing')

# Create products
laptop = Product.new('Laptop', 'Powerful laptop', 999, electronics_category)
tshirt = Product.new('T-Shirt', 'Comfortable cotton t-shirt', 20, clothing_category)

# Add products to categories
electronics_category.add_product(laptop)
clothing_category.add_product(tshirt)

# Create a Product Information Management system
pim = PIM.new

# Add categories to PIM
pim.add_category(electronics_category)
pim.add_category(clothing_category)

# List categories and products
puts 'Categories:'
pim.list_categories

puts "\nProducts:"
pim.list_products
