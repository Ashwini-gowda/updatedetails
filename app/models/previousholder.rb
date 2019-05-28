class Previousholder < ApplicationRecord
  belongs_to :employee
  belongs_to :item

  validates :from_date, :to_date, presence: true

  default_scope { order(from_date: :desc) }
end
