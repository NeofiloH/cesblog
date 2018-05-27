require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get home_inicio_url
    assert_response :success
  end

  test "should get servicios" do
    get home_servicios_url
    assert_response :success
  end

  test "should get contacto" do
    get home_contacto_url
    assert_response :success
  end

  test "should get aplicacion" do
    get home_aplicacion_url
    assert_response :success
  end

end
