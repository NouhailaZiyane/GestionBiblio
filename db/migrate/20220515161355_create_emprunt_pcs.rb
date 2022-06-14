class CreateEmpruntPcs < ActiveRecord::Migration[7.0]
  def change
    create_table :emprunt_pcs do |t|
      t.string :nom_adherent
      t.string :prenom_adherent
      t.string :marque_ordinateur

      t.timestamps
    end
  end
end
