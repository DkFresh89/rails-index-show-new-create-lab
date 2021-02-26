class CouponsController < ApplicationController

    def index 
        @coupons = Coupon.all 
    end 

    def show 
        @coupon = Coupon.find(params[:id])
    end 

    def new 
        @coupon = Coupon.new 
    end 

    def create 
       coupon_params = params.require(:coupon).permit(:coupon_code, :store)
       new_coupon = Coupon.create(coupon_params)
       redirect_to coupon_path(new_coupon)
    end 

    # def create
    #     @coupon = Coupon.new
    #     @coupon[:coupon_code] = params[:coupon][:coupon_code]
    #     @coupon[:store] = params[:coupon][:store]
    #     @coupon.save
    #     redirect_to coupon_path(@coupon)
    #   end

end
