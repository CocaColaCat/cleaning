class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.integer :contact_number
      t.string :email
      t.string :location
      t.string :service
      t.date :date
      t.text :details

      t.timestamps
    end
  end
end
