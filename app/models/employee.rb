class Employee < ApplicationRecord
  validates :eid, :name, :gender, :joining_date, :phone_number, presence: true
  has_many :previousholders, dependent: :destroy

  def name_with_eid
    "#{name}-#{eid}"
  end
end
