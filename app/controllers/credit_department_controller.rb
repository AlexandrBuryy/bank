class CreditDepartmentController < ApplicationController
  def index
    @credit_types = CreditType.all
  end

  def add_credit
    @credit_type = CreditType.new
  end

  def create_credit
    currency_id = Currency.find_by_kind_name(params[:currency]).id
    @credit_type = CreditType.new :kind => params[:credit_type][:kind], :max_sum => params[:max_sum], :percent => params[:percent], :currency_id => currency_id

    respond_to do |format|
      if @credit_type.save
        format.html { redirect_to root_path, notice: 'Credit was successfully created.' }
        format.json { render :show, status: :created, location: @credit_type}
      else
        format.html { render :new }
        format.json { render json: @credit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def details
    @credit_type = CreditType.find(params[:id])
  end

  def edit_credit
    @credit_type = CreditType.find(params[:id])
  end

  def update_credit
    @credit_type = CreditType.find(params[:id])
    @credit_type.update :kind => params[:credit_type][:kind], :max_sum => params[:max_sum], :percent => params[:percent]
    redirect_to root_path
  end

  def delete_credit
    @credit_type = CreditType.find(params[:id])
    @credit_type.destroy
    redirect_to root_path
  end

end
