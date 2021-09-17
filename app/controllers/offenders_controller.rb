class OffendersController < ApplicationController

    def index
        offender = Offender.all
        render json: offender
      end

      def show
        id = params[:id]
        @offender = Offender.find(id)
        render json: @offender, include: :offenders
    end

    def create
      offender = Offender.create!(offender_params)
      render json: offender
    end
      
    def update
      offender = find_offender
      offender.update(offender_params)
      render json: offender
    end
  
    def destroy
      offender = find_offender
      offender.destroy
      head :no_content
    end
end
