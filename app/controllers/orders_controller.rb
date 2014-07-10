class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /orders
  # GET /orders.json
  def index
    @orders =if current_user.role == "provider"
      Order.where("provider_id= ?", current_user.id)
    elsif 
       params[:status]
      Order.where(status: params[:status])
      # Order.where("provider_id= ? AND status= ?", current_user.id, "pending")
    else
      current_user.orders
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json  { render :json => @orders.to_json }
    end
  end

  def dashboard
    @orders = Order.where("pickup_day= ?", Date.today) || Order.where("return_day= ?", Date.today)
    @orders = @orders.where("provider_id= ?", current_user.id)
    # create route (member or collection)
    # write this controller action
    # write a view template that displays orders
    # enhance with JS if required
    # @orders = Order.where(something..)
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new

  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.provider_id = current_user.default_provider_id
    respond_to do |format|
      if @order.save
        format.html { redirect_to orders_path, notice: 'Order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to orders_path, notice: 'Order was successfully updated.' }
        format.json { render json:@order }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:address, :price, :pickup_day, :return_day, :pickup_time, :return_time, :instructions, :dry_cleaning, :wash, :user_id, :provider_id, :status)
    end
end
