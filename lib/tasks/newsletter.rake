namespace :newsletter do
  desc "Send newsletter to all the team"
  task send: :environment do
    @activities = Activity.activities_of_the_week.order(:start_date)
    users = User.all
    users.each do |u|
      NewsletterMailer.notify(u).deliver_now
    end
  end
end
