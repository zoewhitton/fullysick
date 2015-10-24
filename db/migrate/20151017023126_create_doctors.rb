class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :title
      t.references :user, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :post_nominals
      t.text :bio
      t.string :photo

      t.timestamps null: false
    end
  end
end
