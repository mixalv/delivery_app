class PackagesController < ApplicationController

    def create
        @courier=Courier.find(params[:courier_id])
        @package=@courier.packages.create(courier_params)
        redirect_to root_path
    end

    private
        def courier_params
            params.require(:package).permit(:tracking_number, :delivery_status)
        end

end
