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
      id = params[:id]
      offender = Offender.find(id)
      offender.update(offender_params)
      render json: offender
    end
  
    def destroy
      id = params[:id]
      offender = Offender.find(id)
      offender.destroy
      render json: offender
    end

    private

    def offender_params
      params.permit(:name)
  end

end
