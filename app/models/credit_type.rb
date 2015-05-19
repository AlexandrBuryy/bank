class CreditType < ActiveRecord::Base
  has_one :currency
end
