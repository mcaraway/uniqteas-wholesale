Spree::Product.class_eval do
  has_and_belongs_to_many :blendable_taxons, :join_table => 'spree_blendable_products_taxons'

end