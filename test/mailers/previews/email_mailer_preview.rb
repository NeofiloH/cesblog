# Preview all emails at http://localhost:3000/rails/mailers/email_mailer
class EmailMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/email_mailer/recepcion
  def recepcion
    EmailMailer.recepcion
  end

end
