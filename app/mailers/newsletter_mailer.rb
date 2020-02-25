class NewsletterMailer < ApplicationMailer
  def notify
    @user = User.all
    @activities = Activity.activities_of_the_week.order(:start_date)
    @user.each do |user|
      mail to: user.email, subject: "Nuestras actividades de esta semana"
    end
  end
end
