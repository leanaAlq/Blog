class CreateJoinTableCategoriesPosts < ActiveRecord::Migration[5.2]
  def change
    create_join_table :posts, :categories, id: false do |t|
      # t.index [:post_id, :category_id]
      # t.index [:category_id, :post_id]
    end
  end
end
