class OthersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :others do |t|
      t.column :other, :string
    end
  end
end
