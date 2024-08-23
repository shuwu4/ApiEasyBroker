#Al declarar la clase se utiliza la mayus para separar
class MascotasController < ActionController::Base
    def index
        #Variable de instancia @mascota
        @mascotas = Pet.all
    end  
    def show
        @mascota = Pet.find(params[:id])
    end    
end

