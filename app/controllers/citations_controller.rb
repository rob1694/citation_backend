class CitationsController < ApplicationController
    def index
        citation = Citation.all
        render json: citation
      end

      def show
        id = params[:id]
        citation = Citation.find(id)
        render json:citation
    end

    def create
      citation = Citation.create(citation_params)
      render json: citation
    end
      
    def update
      id = params[:id]
      citation = Citation.find(id)
      citation.update(citation_params)
      render json: citation
    end
  
    def destroy
      id = params[:id]
      citation = Citation.find(id)
      citation.destroy
      render json: citation
    end

    private

    def citation_params
      params.permit(:violations, :amount, :due_date, :due_date, :summons_date)
  end

end
