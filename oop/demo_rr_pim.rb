# frozen_string_literal: true

# app/models/product.rb
class Product < ApplicationRecord
  belongs_to :category

  def to_s
    "#{name} - #{description} - £#{price} - Category: #{category.name}"
  end
end

# app/models/category.rb
class Category < ApplicationRecord
  has_many :products, dependent: :destroy

  def to_s
    "#{name} - #{products.count} products"
  end
end

# db/migrate/20240417000000_create_products.rb
class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

# db/migrate/20240417000001_create_categories.rb
class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end
end

# app/models/pim.rb
class PIM
  attr_accessor :categories

  def initialize
    @categories = []
  end

  def add_category(category)
    @categories << category
  end

  def remove_category(category)
    @categories.delete(category)
  end

  def list_categories
    @categories.each do |category|
      puts category
    end
  end

  def list_products
    @categories.each do |category|
      category.products.each do |product|
        puts product
      end
    end
  end
end
