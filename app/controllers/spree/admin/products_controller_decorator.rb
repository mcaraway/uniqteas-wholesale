Spree::Admin::ProductsController.class_eval do
  update.after :update_after
  
  def update_after
    @product.update_viewables
  end
end