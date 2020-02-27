namespace :newsletter do
  desc "Send newsletter to all the team"
  task send: :environment do
    @users = User.all
    @users.each do |u|
      NewsletterMailer.notify(u).deliver_now
    end
  end
end
