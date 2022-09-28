class PaymethodsController < ApplicationController
  before_action :set_paymethod, only: %i[ show edit update destroy ]

  # GET /paymethods or /paymethods.json
  def index
    user = User.find(params[:user_id])
    pagpay = user.paymethods
    @paymethods = pagpay.paginate(page: params[:page], per_page: 1)
    render json: @paymethods
  end

  # GET /paymethods/1 or /paymethods/1.json
  def show
  end

  # GET /paymethods/new
  def new
    @paymethod = Paymethod.new
  end

  # GET /paymethods/1/edit
  def edit
  end

  # POST /paymethods or /paymethods.json
  def create
    @paymethod = Paymethod.new(paymethod_params)
    @paymethod.user = User.first
    respond_to do |format|
      if @paymethod.save
        format.html { redirect_to paymethod_url(@paymethod), notice: "Paymethod was successfully created." }
        format.json { render :show, status: :created, location: @paymethod }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @paymethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymethods/1 or /paymethods/1.json
  def update
    respond_to do |format|
      if @paymethod.update(paymethod_params)
        format.html { redirect_to paymethod_url(@paymethod), notice: "Paymethod was successfully updated." }
        format.json { render :show, status: :ok, location: @paymethod }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @paymethod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymethods/1 or /paymethods/1.json
  def destroy
    @paymethod.destroy

    respond_to do |format|
      format.html { redirect_to paymethods_url, notice: "Paymethod was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymethod
      @paymethod = Paymethod.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paymethod_params
      params.fetch(:paymethod).permit(:name, :user_id)
    end
end
