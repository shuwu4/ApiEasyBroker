require 'test_helper'
class MascotasControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of mascotas' do
        get mascotas_path
        #Hacemos la petición para comprobar que lo que nos devuelve, es lo que queremos
        assert_response :success
        assert_select '.mascota', 2
    end
    test 'render a detail mascota page' do
        get mascota_path(mascota(:chencho))
        assert_response :success
        assert_select '.title', 'Chencho'
        assert_select '.description', 'Encontrado'
        assert_select '.date', '2024-06-26'
    end
end