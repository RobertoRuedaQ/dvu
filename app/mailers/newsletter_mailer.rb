class NewsletterMailer < ApplicationMailer
  def notify(user)
    @activities = Activity.activities_of_the_week.order(:start_date)
    @user = user
    mail to: user.email, subject: "Nuestras actividades de esta semana"
  end
end
