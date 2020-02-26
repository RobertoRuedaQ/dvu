class NewsletterMailer < ApplicationMailer
  def notify
    @users = User.all
    @activities = Activity.activities_of_the_week.order(:start_date)
    @users.each do |user|
      @user = user
      mail to: user.email, subject: "Nuestras actividades de esta semana"
    end
  end
end
