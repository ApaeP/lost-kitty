class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: {in: ["cat", "dog", "goat", "guinea pig", "llama", "goldfish"]}

  def found_days_ago
    (Date.today - found_date).to_i
  end
end
