class Expense < ApplicationRecord
belongs_to :activity
belongs_to :budget

validates :expense_type, :client_type, :name, :bill_number, :amount, :budget_id, :description, :date, :activity_id, presence: true 

EXPENSES_TYPES = ["Compra", "Pago", "Gasto"]
CLIENTS_TYPES = ["Externo", "Interno"]

  def self.total_expenses
    pluck(:amount).reduce(:+)
  end
end
