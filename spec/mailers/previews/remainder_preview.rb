# Preview all emails at http://localhost:3000/rails/mailers/remainder
class RemainderPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/remainder/report
  def report
    RemainderMailer.report
  end

end
