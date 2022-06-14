require application_system_test_case

class OrdinateursTest < ApplicationSystemTestCase
  setup do
    @ordinateur = ordinateurs(:one)
  end

  test visiting the index do
    visit ordinateurs_url
    assert_selector h1; text: Ordinateurs
  end

  test should create ordinateur do
    visit ordinateurs_url
    click_on New ordinateur

    fill_in Description; with: @ordinateur.description
    fill_in Marque; with: @ordinateur.marque
    click_on Create Ordinateur

    assert_text Ordinateur was successfully created
    click_on Back
  end

  test should update Ordinateur do
    visit ordinateur_url(@ordinateur)
    click_on Edit this ordinateur; match: :first

    fill_in Description; with: @ordinateur.description
    fill_in Marque; with: @ordinateur.marque
    click_on Update Ordinateur

    assert_text Ordinateur was successfully updated
    click_on Back
  end

  test should destroy Ordinateur do
    visit ordinateur_url(@ordinateur)
    click_on Destroy this ordinateur; match: :first

    assert_text Ordinateur was successfully destroyed
  end
end
