module BudgetsHelper
  def expenses_per_budget(budget)
    if budget.expenses_per_budget
      budget.expenses_per_budget.to_s
    else
      0
    end
  end
end
