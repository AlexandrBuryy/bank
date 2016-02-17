class Creditor < ActiveRecord::Base
  has_many :credit_queries
end
