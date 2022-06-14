class CreateOrdinateurs < ActiveRecord::Migration[7.0]
  def change
    create_table :ordinateurs do |t|
      t.string :marque
      t.string :description

      t.timestamps
    end
  end
end
