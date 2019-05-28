class Item < ApplicationRecord
  validates :item_id, :item_name, :item_brand, :item_model_number, :item_purchase_date, :present_holder_id, :previous_holder_id, presence: true
  
  has_many :previousholders, dependent: :destroy

  def name_with_id
    "#{item_name}-#{item_id}"
  end
end
