class CouponControllerController < ApplicationController

  def index
  end

  def new
  end

  def create
    byebug
    @coupon = Coupon.new
    @coupon.coupon_code = params[:coupon_code]
    @coupon.store = params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end

end
