class Expense < ApplicationRecord
EXPENSES_TYPES = ["Compra", "Pago", "Gasto"]
CLIENTS_TYPES = ["Externo", "Interno"]

  belongs_to :activity
  belongs_to :budget

  def self.total_expenses
    pluck(:amount).reduce(:+)
  end
end
