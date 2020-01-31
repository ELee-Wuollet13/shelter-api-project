class AddSheltersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.column :street_address, :string
      t.column :city, :string
    end
  end
end
