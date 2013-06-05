Spree::BaseHelper.class_eval do
  def get_category_root
    Spree::Taxonomy.where(:name => 'Categories').includes(:root => :children).first.root
  end
  
  def categories_tree(root_taxon, current_taxon, max_level, current_level = 1)
    return '' if max_level < current_level || root_taxon.children.empty?
    css_class = current_level == 1 ? 'sf-menu' : ''
    content_tag :ul, :class => css_class do
      root_taxon.children.map do |taxon|
        css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'current' : nil
        content_tag :li, :class => css_class do
          link_to(taxon.name, seo_url(taxon)) +
          categories_tree(taxon, current_taxon, max_level, current_level + 1)
        end
      end.join("\n").html_safe
    end
  end

end