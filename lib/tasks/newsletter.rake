namespace :newsletter do
  desc "Send newsletter to all the team"
  task send: :environment do
    NewsletterMailer.notify
  end
end
