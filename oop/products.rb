# frozen_string_literal: true

# Define a class named Category to represent categories of products
class Category
  # Define attributes for the Category class
  attr_accessor :name, :products

  # Define an initializer method for the Category class
  def initialize(name)
    # Set the name attribute of the category to the provided name
    @name = name
    # Initialize the products attribute as an empty array
    @products = []
  end

  # Define a method to add a product to the category
  def add_product(product)
    # Append the given product to the list of products in this category
    @products << product
  end

  # Define a method to print all products in the category
  def print_products
    puts "Products in category #{@name}:"
    @products.each do |product|
      puts "Name: #{product.name}, Price: #{product.price}, Quantity: #{product.quantity}"
    end
  end
end

# Define a class named Product to represent individual products
class Product
  # Define attributes for the Product class
  attr_accessor :name, :price, :quantity, :category

  # Define an initializer method for the Product class
  def initialize(name, price, quantity, category)
    # Set the attributes of the product to the provided values
    @name = name
    @price = price
    @quantity = quantity
    @category = category
    # Add this product to the list of products in its category
    category.add_product(self)
  end
end

# Create some categories
food_category = Category.new('Food')
drink_category = Category.new('Drink')

# Create some products and associate them with categories
product1 = Product.new('Apple', 1.99, 50, food_category)
product2 = Product.new('Orange Juice', 2.49, 30, drink_category)

# Print products in each category
food_category.print_products
drink_category.print_products
