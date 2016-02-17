class DepositDepartmentController < ApplicationController
  def index
    @deposit_types = DepositType.all
  end

  def add_deposit
    @deposit_type = DepositType.new
  end

  def create_deposit
    currency_id = Currency.find_by_kind_name(params[:currency]).id
    @deposit_type = DepositType.new :kind => params[:deposit_type][:kind], :min_sum => params[:min_sum], :percent => params[:percent], :deposit_duration => params[:deposit_duration], :currency_id => currency_id

    respond_to do |format|
      if @deposit_type.save
        format.html { redirect_to deposit_index_path, notice: 'Credit was successfully created.' }
        format.json { render :show, status: :created, location: @deposit_type}
      else
        format.html { render :new }
        format.json { render json: @deposit_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def details
    @deposit_type = DepositType.find(params[:id])
  end

  def edit_deposit
    @deposit_type = DepositType.find(params[:id])
  end

  def update_deposit
    currency_id = Currency.find_by_kind_name(params[:currency]).id
    @deposit_type = DepositType.find(params[:id])
    @deposit_type.update :kind => params[:deposit_type][:kind], :min_sum => params[:min_sum], :percent => params[:percent], :deposit_duration => params[:deposit_duration], :currency_id => currency_id
    redirect_to deposit_index_path
  end

  def delete_deposit
    @deposit_type = DepositType.find(params[:id])
    @deposit_type.destroy
    redirect_to deposit_index_path
  end
end
