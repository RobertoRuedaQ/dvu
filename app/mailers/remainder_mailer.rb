class RemainderMailer < ApplicationMailer
  def report(activity)
    @user = activity.user
    @activity = activity
    mail to: activity.user.email, subject: "Recuerda el informe de #{activity.activity_name}"
  end
end
