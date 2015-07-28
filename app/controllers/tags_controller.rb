class TagsController < ApplicationController
  before_action :authenticate_user!

  def show
    @presentations = Presentation.tagged_with(params[:name]).order(published_at: :desc).paginate(page: params[:page])
    render "presentations/index"
  end
end