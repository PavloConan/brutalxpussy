Spree::HomeController.class_eval do
  def index
    @searcher = build_searcher(params)
    @products = @searcher.retrieve_products.order("spree_products.created_at DESC")
    @taxonomies = Spree::Taxonomy.all
  end
end
