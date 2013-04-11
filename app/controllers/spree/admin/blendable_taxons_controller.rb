class Spree::Admin::BlendableTaxonsController < Spree::Admin::ResourceController
  respond_to :json, :only => [:get_children]
  before_filter :load_data, :except => :index
  
  def update
    if params[:blendable_taxon][:product_ids].present?
      logger.debug "************ params before = #{params[:blendable_taxon][:product_ids]}"
      params[:blendable_taxon][:product_ids].reject! { |c| c.empty? }
      # params[:blendable_taxon][:product_ids] = params[:blendable_taxon][:product_ids].split(',')
      logger.debug "************ params after = #{params[:blendable_taxon][:product_ids]}"
    end
    super
  end

  def get_children
    @products = Products.find(params[:id]).children

    respond_with(@products)
  end

  protected

  def load_data
    @products = Spree::Product.order(:name)
  end

  def location_after_save
    if @blendable_taxon.created_at == @blendable_taxon.updated_at
      edit_admin_blendable_taxon_url(@blendable_taxon)
    else
      admin_blendable_taxon_url
    end
  end

  private
end