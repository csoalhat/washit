require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { email: @client.email, first_name: @client.first_name, home_address: @client.home_address, home_address_city: @client.home_address_city, home_address_zipcode: @client.home_address_zipcode, last_name: @client.last_name, phone: @client.phone, user_id: @client.user_id, work_address: @client.work_address, work_address_city: @client.work_address_city, work_address_zipcode: @client.work_address_zipcode }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { email: @client.email, first_name: @client.first_name, home_address: @client.home_address, home_address_city: @client.home_address_city, home_address_zipcode: @client.home_address_zipcode, last_name: @client.last_name, phone: @client.phone, user_id: @client.user_id, work_address: @client.work_address, work_address_city: @client.work_address_city, work_address_zipcode: @client.work_address_zipcode }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
