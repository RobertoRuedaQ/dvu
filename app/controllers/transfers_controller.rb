class TransfersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transfer, only: [:show, :edit, :update, :destroy]

  def index
    @transfers = Transfer.all
  end

  def show
  end

  def new
    @transfer = Transfer.new
    @budget = Budget.all
  end

  def edit
    @budget = Budget.all
  end

  def create
    @transfer = Transfer.new(transfer_params)
    transfer_amount_between_budgets(transfer_params)

    respond_to do |format|
      if @transfer.save
        format.html { redirect_to @transfer, notice: 'Un nuevo traslado a sido creado.' }
        format.json { render :show, status: :created, location: @transfer }
      else
        format.html { render :new }
        format.json { render json: @transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @transfer.update(transfer_params)
        format.html { redirect_to @transfer, notice: 'El traslado a sido actualizado.' }
        format.json { render :show, status: :ok, location: @transfer }
      else
        format.html { render :edit }
        format.json { render json: @transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @transfer.destroy
    respond_to do |format|
      format.html { redirect_to transfers_url, notice: 'El translado ha sido eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    def set_transfer
      @transfer = Transfer.find(params[:id])
    end

    def transfer_params
      params.require(:transfer).permit(:amount, :description, :sender_id, :receiver_id, :date)
    end

    def transfer_amount_between_budgets(transfer_params)
      sender = Budget.find(transfer_params[:sender_id])
      reciever = Budget.find(transfer_params[:receiver_id])
      sleep 1

      p sender
      p reciever

      sleep 1
      p sender.amount
      p reciever.amount
      sleep 1
      p transfer_params[:amount].to_i

      sleep 1
      sender.amount = sender.amount - transfer_params[:amount].to_i
      sender.save
      sleep 1
      p sender

      sleep 1
      reciever.amount = reciever.amount + transfer_params[:amount].to_i
      reciever.save
      sleep 1
      p reciever
    end
end
