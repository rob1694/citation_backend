class EnforcersController < ApplicationController

    def index
        enforcer = Enforcer.all
        render json: enforcer
      end

      def show
        id = params[:id]
        enforcer = Enforcer.find(id)
        render json: enforcer, include: :enforcers
    end

    def create
      @enforcer = Enforcer.create(enforcer_params)
      render json: @enforcer
    end
      
    def update
      id = params[:id]
      enforcer = Enforcer.find(id)
      enforcer.update(enforcer_params)
      render json: enforcer
    end
  
    def destroy
      id = params[:id]
      enforcer = Enforcer.find(id)
      enforcer.destroy
      render json: enforcer
    end

    private

    
    def enforcer_params
        params.permit(:name, :badge_number)
    end
end
