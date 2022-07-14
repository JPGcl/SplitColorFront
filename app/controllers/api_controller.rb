class ApiController < ApplicationController
  before_action :news_params, only: %i[ show ]
  before_action :set_news, only: %i[ show ]

  # POST
  def news
    required = [:date1, :date2]
    if required.all? {|k| params.has_key? k}
      @newspost = Menu.where("created_at >= ? and created_at <= ?", params[:date1].to_datetime, params[:date2].to_datetime)
    else
      @newspost = Menu.all
    end
    render json: @newspost
  end

  private
    def set_news
     # @news = Menu.all
    end

    def news_params
      params.require(:menu).permit(:date1, :date2)
    end
end
