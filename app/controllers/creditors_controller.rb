class CreditorsController < ApplicationController
  include ClientsHelper

  def index
    @creditor = Creditor.first
    @queries = @creditor.credit_queries
  end

  def information
    @query = CreditQuery.find(params[:id])
  end

  def accept

    @query = CreditQuery.find(params[:id])
    client_curr = @query.client
    bank = TheBank.find(1)
    if params[:acceptance] == 'yes'
    credit = Credit.new :data_begin => DateTime.now, :sum => @query.sum, :credit_type_id => @query.credit_type.id, :client_id => @query.client.id
    credit.save

    ##### EDIT!!!!
    
    case @query.credit_type.currency_id
      when 1
        client_curr.bill_rus += @query.sum
      when 2
        client_curr.bill_bel += @query.sum
      when 3
        client_curr.bill_euro += @query.sum
      when 4
        client_curr.bill_dollars += @query.sum
    end 
    client_curr.profit_per_month -= ExchangeDepartment.Exchange(@query.credit_type.currency_id, Currency.find(client_curr.profit_currency_id),(@query.sum.to_f/@query.credit_type.credit_duration)*@query.credit_type.percent)
    client_curr.save
    appropriate_sum = ExchangeDepartment.Exchange(@query.credit_type.currency_id, 4, @query.sum)
    if bank.start_capital >= appropriate_sum
      bank.start_capital -= appropriate_sum
    else
       case @query.credit_type.currency_id
        when 1
          bank.money_rus -= @query.sum
        when 2
          bank.money_bel -= @query.sum
        when 3
          bank.money_euro -= @query.sum
        when 4
          bank.money_dollars -= @query.sum
      end
    end
    bank.rating += 1
    bank.save
    add_message("Your query for #{@query.credit_type.kind} was accepted.", @query.client.id)
    #####


    else if params[:acceptance] == 'no'
      bank.rating -= 1
      add_message("Unfortunately, your query for #{@query.credit_type.kind} was rejected. Nothing personal %)", @query.client.id)
    end
    end
    @query.destroy
    redirect_to client_profile_path(@query.client.id)
  end
end
