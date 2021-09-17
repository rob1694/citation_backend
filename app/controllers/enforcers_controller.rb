class EnforcersController < ApplicationController

    def index
        enforcer = Enforcer.all
        render json: enforcer
      end

      def show
        id = params[:id]
        @enforcer = Enforcer.find(id)
        render json: @enforcer, include: :enforcers
    end

    def create
      enforcer = Enforcer.create!(enforcer_params)
      render json: enforcer
    end
      
    def update
      enforcer = find_enforcer
      enforcer.update(enforcer_params)
      render json: enforcer
    end
  
    def destroy
      enforcer = find_enforcer
      enforcer.destroy
      head :no_content
    end
end
