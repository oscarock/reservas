module Api
  module V1
    class StockpilesController < ApplicationController
      protect_from_forgery except: :create

      def index
        @stockpiles = Stockpiles.joins(:movies).select('stockpiles.id','stockpiles.name','stockpiles.email', 'stockpiles.document' ,'movies.name as movie', 'movies.created_at')
        render json: @stockpiles
      end

      def create
        @stockpile = Stockpiles.new(stockpile_params)

        if @stockpile.save
          render json: @stockpile, status: :created
        else
          render json: @stockpile.errors, status: :unprocessable_entity
        end
      end

      def validate
        @stockpiles = Stockpiles.where("movies_id = ?", params[:id]).count 
        if @stockpiles == 10
          @result = {
            message: "Capacidad Llena",
            state: true
          }
        else
          @result = {
            message: "Capacidad Disponible",
            state: false
          }
        end
        render json: @result
      end

      private

      def stockpile_params
        params.require(:stockpile).permit(:name, :document, :email, :movies_id)
      end
    end
  end
end
