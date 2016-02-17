class ExchangeController < ApplicationController
  def clients_bill_exchange
    @client = Client.find(params[:id])
  end

  def apply
    client = Client.find(params[:client_id])
    sum = params[:sum].to_i
    from_currency = params[:from_currency]
    to_currency = params[:to_currency]
    is_done = false
    case from_currency.to_i
      when 1
        if client.bill_rus >= sum
          client.bill_rus -= sum
          is_done = true
        end
      when 2
        if client.bill_bel >= sum
          client.bill_bel -= sum
          is_done = true
        end
      when 3
        if client.bill_euro >=
          client.bill_euro -= sum
          is_done = true
        end
      when 4
        if client.bill_dollars >= sum
          client.bill_dollars -= sum
          is_done = true
        end
    end

    if (is_done)
      converted_sum = ExchangeDepartment.Exchange(from_currency, to_currency, sum)
    else
      converted_sum = 0
    end

    case to_currency.to_i
      when 1
        client.bill_rus += converted_sum
      when 2
        client.bill_bel += converted_sum
      when 3
        client.bill_euro += converted_sum
      when 4
        client.bill_dollars += converted_sum
    end

    client.save
    redirect_to :action => "clients_bill_exchange", :id => client.id
  end
end
