class CreateFreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.integer :company_id # Company foreign key
      t.integer :dev_id # Dev foreign key
    end   
  end
end
