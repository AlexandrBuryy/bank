class ExchangeDepartment < ActiveRecord::Base

  def ExchangeDepartment.Exchange(from_currency_id, to_currency_id, value)
    ((ExchangeValue.find(from_currency_id).value.to_f/ExchangeValue.find(to_currency_id).value.to_f) * value).floor
  end

end
