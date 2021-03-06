class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new

  end

  def show
    set_coupon
  end

  def create
    @coupon = Coupon.create "coupon_code" => params[:coupon][:coupon_code], "store" => params[:coupon][:store]
    params[:id] = @coupon.id
    redirect_to coupon_path(@coupon)
  end

  private

    def set_coupon
      @coupon = Coupon.find params[:id]
    end
end
