class CitationsController < ApplicationController
    def index
        citation = Citation.all
        render json: citation
      end

      def show
        id = params[:id]
        @citation = Citation.find(id)
        render json: @citation
    end

    def create
      citation = Citation.create!(citation_params)
      render json: citation
    end
      
    def update
      citation = find_citation
      citation.update(citation_params)
      render json: citation
    end
  
    def destroy
      citation = find_citation
      citation.destroy
      head :no_content
    end
end
