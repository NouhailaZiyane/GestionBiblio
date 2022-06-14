class CreateEmpruntLivres < ActiveRecord::Migration[7.0]
  def change
    create_table :emprunt_livres do |t|
      t.string :nom_adherent
      t.string :prenom_adherent
      t.string :titre_livre

      t.timestamps
    end
  end
end
