class ElectricityBillsController < ApplicationController
  before_action :set_electricity_bill, only: %i[ show edit update destroy ]

  # GET /electricity_bills
  def index
    @electricity_bills = ElectricityBill.all
  end

  # GET /electricity_bills/1
  def show
  end

  # GET /electricity_bills/new
  def new
    @electricity_bill = ElectricityBill.new
  end

  # GET /electricity_bills/1/edit
  def edit
  end

  # POST /electricity_bills
  def create
    @electricity_bill = ElectricityBill.new(electricity_bill_params)

    if @electricity_bill.save
      flash.now.notice = "電気代を追加しました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /electricity_bills/1
  def update
    if @electricity_bill.update(electricity_bill_params)
      flash.now.notice = "電気代を更新しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /electricity_bills/1
  def destroy
    @electricity_bill.destroy!
    flash.now.notice = "電気代を削除しました。"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electricity_bill
      @electricity_bill = ElectricityBill.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def electricity_bill_params
      params.require(:electricity_bill).permit(:month, :amount)
    end
end
