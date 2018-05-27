class EmailMailer < ApplicationMailer

  default from: "neofilo.delaossa@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email_mailer.recepcion.subject
  #
  def micorreo(parametros)
    @nombre = parametros[:nombre]
    @email = parametros[:email]
    @asunto = parametros[:asunto]
    @mensaje = parametros[:mensaje]

    mail to: "contacto@hernandelaossa.com.co", :subject => "PQRS CES"    

  end

  def enviar(parametros)
    @nombre = parametros[:nombre]
    @email = parametros[:email]
    @asunto = parametros[:asunto]
    @mensaje = parametros[:mensaje]

    mail to: parametros[:email], :subject => "PQRS CES"
  end

end
