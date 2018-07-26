class UsuariosController < ApplicationController
  def new
  end

  def create
    @usuario = Usuario.new usuario_params
    @usuario.save
  end
  
  def index
    @allUsuarios = Usuario.all
  end

  def edit
     @usuario = Usuario.find(params[:id])
  end

  private
     def usuario_params
         params.require(:usuario).permit(:nombre, :apellido, :correo)
     end 
end
