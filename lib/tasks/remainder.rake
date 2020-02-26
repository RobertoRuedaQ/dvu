namespace :remainder do
  desc "Send an email as a remainder to create report"
  task report: :environment do
    @activities = Activity.all
    @activities.each do |activity|
      if activity.have_report == true && activity.end_date == Time.now - 2.day
        RemainderMailer.report(activity)
      end
    end
  end
end
