class NewsletterMailer < ApplicationMailer
  def notify(user)
      mail to: user.email, subject: "Nuestras actividades de esta semana"
    end
  end
end
