# This migration comes from spree_hideable_taxons (originally 20170306124534)
class AddHiddenToSpreeTaxons < SpreeExtension::Migration[4.2]
  def change
    add_column :spree_taxons, :hidden, :boolean, default: false
  end
end
