class AddCategoryToPoem < ActiveRecord::Migration[6.1]
  def change
    add_reference :poems, :category, null: false, foreign_key: true
  end
end
