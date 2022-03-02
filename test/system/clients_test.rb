require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "should create client" do
    visit clients_url
    click_on "New client"

    fill_in "Company", with: @client.Company_id
    fill_in "Nombre", with: @client.nombre
    fill_in "Nro doc", with: @client.nro_doc
    check "Persona juridica" if @client.persona_juridica
    fill_in "Telefono", with: @client.telefono
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "should update Client" do
    visit client_url(@client)
    click_on "Edit this client", match: :first

    fill_in "Company", with: @client.Company_id
    fill_in "Nombre", with: @client.nombre
    fill_in "Nro doc", with: @client.nro_doc
    check "Persona juridica" if @client.persona_juridica
    fill_in "Telefono", with: @client.telefono
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "should destroy Client" do
    visit client_url(@client)
    click_on "Destroy this client", match: :first

    assert_text "Client was successfully destroyed"
  end
end
