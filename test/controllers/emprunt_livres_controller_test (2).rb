require test_helper

class EmpruntLivresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emprunt_livre = emprunt_livres(:one)
  end

  test should get index do
    get emprunt_livres_url
    assert_response :success
  end

  test should get new do
    get new_emprunt_livre_url
    assert_response :success
  end

  test should create emprunt_livre do
    assert_difference(EmpruntLivre.count) do
      post emprunt_livres_url; params: { emprunt_livre: { nom_adherent: @emprunt_livre.nom_adherent; prenom_adherent: @emprunt_livre.prenom_adherent; titre_livre: @emprunt_livre.titre_livre } }
    end

    assert_redirected_to emprunt_livre_url(EmpruntLivre.last)
  end

  test should show emprunt_livre do
    get emprunt_livre_url(@emprunt_livre)
    assert_response :success
  end

  test should get edit do
    get edit_emprunt_livre_url(@emprunt_livre)
    assert_response :success
  end

  test should update emprunt_livre do
    patch emprunt_livre_url(@emprunt_livre); params: { emprunt_livre: { nom_adherent: @emprunt_livre.nom_adherent; prenom_adherent: @emprunt_livre.prenom_adherent; titre_livre: @emprunt_livre.titre_livre } }
    assert_redirected_to emprunt_livre_url(@emprunt_livre)
  end

  test should destroy emprunt_livre do
    assert_difference(EmpruntLivre.count; -1) do
      delete emprunt_livre_url(@emprunt_livre)
    end

    assert_redirected_to emprunt_livres_url
  end
end
