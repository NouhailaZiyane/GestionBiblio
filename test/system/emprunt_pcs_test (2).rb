require application_system_test_case

class EmpruntPcsTest < ApplicationSystemTestCase
  setup do
    @emprunt_pc = emprunt_pcs(:one)
  end

  test visiting the index do
    visit emprunt_pcs_url
    assert_selector h1; text: Emprunt pcs
  end

  test should create emprunt pc do
    visit emprunt_pcs_url
    click_on New emprunt pc

    fill_in Marque ordinateur; with: @emprunt_pc.marque_ordinateur
    fill_in Nom adherent; with: @emprunt_pc.nom_adherent
    fill_in Prenom adherent; with: @emprunt_pc.prenom_adherent
    click_on Create Emprunt pc

    assert_text Emprunt pc was successfully created
    click_on Back
  end

  test should update Emprunt pc do
    visit emprunt_pc_url(@emprunt_pc)
    click_on Edit this emprunt pc; match: :first

    fill_in Marque ordinateur; with: @emprunt_pc.marque_ordinateur
    fill_in Nom adherent; with: @emprunt_pc.nom_adherent
    fill_in Prenom adherent; with: @emprunt_pc.prenom_adherent
    click_on Update Emprunt pc

    assert_text Emprunt pc was successfully updated
    click_on Back
  end

  test should destroy Emprunt pc do
    visit emprunt_pc_url(@emprunt_pc)
    click_on Destroy this emprunt pc; match: :first

    assert_text Emprunt pc was successfully destroyed
  end
end
