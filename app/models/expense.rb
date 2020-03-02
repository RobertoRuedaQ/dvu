class Expense < ApplicationRecord
EXPENSES_TYPES = ["Compra", "Pago", "Gasto"]
CLIENTS_TYPES = ["Externo", "Interno"]

validates_presence_of :expense_type, :client_type, :name, :bill_number, :amount, :budget_id, :description, :date, :activity_id, presence: true
  belongs_to :activity
  belongs_to :budget

  def self.total_expenses
    pluck(:amount).reduce(:+)
  end
end
