require application_system_test_case

class EmpruntLivresTest < ApplicationSystemTestCase
  setup do
    @emprunt_livre = emprunt_livres(:one)
  end

  test visiting the index do
    visit emprunt_livres_url
    assert_selector h1; text: Emprunt livres
  end

  test should create emprunt livre do
    visit emprunt_livres_url
    click_on New emprunt livre

    fill_in Nom adherent; with: @emprunt_livre.nom_adherent
    fill_in Prenom adherent; with: @emprunt_livre.prenom_adherent
    fill_in Titre livre; with: @emprunt_livre.titre_livre
    click_on Create Emprunt livre

    assert_text Emprunt livre was successfully created
    click_on Back
  end

  test should update Emprunt livre do
    visit emprunt_livre_url(@emprunt_livre)
    click_on Edit this emprunt livre; match: :first

    fill_in Nom adherent; with: @emprunt_livre.nom_adherent
    fill_in Prenom adherent; with: @emprunt_livre.prenom_adherent
    fill_in Titre livre; with: @emprunt_livre.titre_livre
    click_on Update Emprunt livre

    assert_text Emprunt livre was successfully updated
    click_on Back
  end

  test should destroy Emprunt livre do
    visit emprunt_livre_url(@emprunt_livre)
    click_on Destroy this emprunt livre; match: :first

    assert_text Emprunt livre was successfully destroyed
  end
end
