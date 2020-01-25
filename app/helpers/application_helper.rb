module ApplicationHelper
  
  def total_budget
    @total_budget ||= Budget.total_budget
  end

  def total_activities
    @total_activities ||= Activity.count
  end

  def total_expenses
    @total_expenses ||= Expense.total_expenses
  end

  def participants_table(participants)
    content_tag :tr do
      participants.collect { |p| content_tag(:th, p)}
    end
  end

  def day_of_month(date)
    date.strftime("%d")
  end

  def month_in_letter(date)
    date.strftime("%b")
  end

  def day_of_the_week(date)
    date.strftime("%A")
  end
  
end
