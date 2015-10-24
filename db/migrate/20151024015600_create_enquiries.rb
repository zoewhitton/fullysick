class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :email
      t.string :name
      t.text :message
      t.string :phone
      t.string :enquiry_type

      t.timestamps null: false
    end
  end
end
