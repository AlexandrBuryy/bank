class CreditQuery < ActiveRecord::Base
  belongs_to :client
  belongs_to :creditor
  belongs_to :credit_type
end
