require test_helper

class EmpruntPcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emprunt_pc = emprunt_pcs(:one)
  end

  test should get index do
    get emprunt_pcs_url
    assert_response :success
  end

  test should get new do
    get new_emprunt_pc_url
    assert_response :success
  end

  test should create emprunt_pc do
    assert_difference(EmpruntPc.count) do
      post emprunt_pcs_url; params: { emprunt_pc: { marque_ordinateur: @emprunt_pc.marque_ordinateur; nom_adherent: @emprunt_pc.nom_adherent; prenom_adherent: @emprunt_pc.prenom_adherent } }
    end

    assert_redirected_to emprunt_pc_url(EmpruntPc.last)
  end

  test should show emprunt_pc do
    get emprunt_pc_url(@emprunt_pc)
    assert_response :success
  end

  test should get edit do
    get edit_emprunt_pc_url(@emprunt_pc)
    assert_response :success
  end

  test should update emprunt_pc do
    patch emprunt_pc_url(@emprunt_pc); params: { emprunt_pc: { marque_ordinateur: @emprunt_pc.marque_ordinateur; nom_adherent: @emprunt_pc.nom_adherent; prenom_adherent: @emprunt_pc.prenom_adherent } }
    assert_redirected_to emprunt_pc_url(@emprunt_pc)
  end

  test should destroy emprunt_pc do
    assert_difference(EmpruntPc.count; -1) do
      delete emprunt_pc_url(@emprunt_pc)
    end

    assert_redirected_to emprunt_pcs_url
  end
end
