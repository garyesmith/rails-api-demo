class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :tag
      t.string :category
      t.string :image
      t.string :description
      t.string :body

      t.timestamps
    end
  end
end
