class CreditType < ActiveRecord::Base
  has_one :currency
  belongs_to :credit
end
