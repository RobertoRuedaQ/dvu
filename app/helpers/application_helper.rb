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
  
end
