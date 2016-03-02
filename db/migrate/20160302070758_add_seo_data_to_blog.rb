class AddSeoDataToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :seo_description, :string
    add_column :blogs, :seo_keywords, :string
  end
end
