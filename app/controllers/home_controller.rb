class HomeController < ApplicationController
 
  def inicio

  	respond_to do |format|
  		format.html
  		format.html.phone
  		format.html.tablet
  	end

  end

  def servicios

  	respond_to do |format|
  		format.html
  		format.html.phone
  		format.html.tablet
  	end

  	end
  
  def contacto

   if request.post?
     begin
      if EmailMailer.micorreo(params).deliver and EmailMailer.enviar(params).deliver
         flash.now[:noticia] = "Correo eléctronico enviado satisfactoriamente, nuestro equipo se pondrá en contacto contigo muy pronto."      
      end       
     rescue
        flash.now[:noticia] = "Falla al enviar solicitud"
     end
   end

  	respond_to do |format|
  		format.html
  		format.html.phone
  		format.html.tablet
  	end

  end

  def aplicacion

  	respond_to do |format|
  		format.html
  		format.html.phone
  		format.html.tablet
  	end
  	
  	end

end
