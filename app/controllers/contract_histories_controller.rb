class ContractHistoriesController < ApplicationController
  before_action :set_contract_history, only: %i[ show edit update destroy ]

  # GET /contract_histories
  def index
    @contract_histories = ContractHistory.all
  end

  # GET /contract_histories/1
  def show
  end

  # GET /contract_histories/new
  def new
    @contract_history = ContractHistory.new
  end

  # GET /contract_histories/1/edit
  def edit
  end

  # POST /contract_histories
  def create
    @contract_history = ContractHistory.new(contract_history_params)

    if @contract_history.save
      redirect_to @contract_history, notice: "契約履歴を追加しました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contract_histories/1
  def update
    if @contract_history.update(contract_history_params)
      redirect_to @contract_history, notice: "契約履歴を更新しました。", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /contract_histories/1
  def destroy
    @contract_history.destroy!
    flash.now.notice = "契約履歴を削除しました。"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_history
      @contract_history = ContractHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contract_history_params
      params.require(:contract_history).permit(:company, :plan, :ampere, :start_at)
    end
end
