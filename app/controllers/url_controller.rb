class UrlController < ApplicationController

def index
  @urls = Url.all
end

  def new
    @url = Url.new
  end

  def create
    @new_url = Url.create(url_params)
    @new_url.short_url = "cur.ve/" + SecureRandom.urlsafe_base64(6)

    if @new_url.save
      redirect_to @new_url
    else
      render :new
    end

  end

  def show
    @url = Url.find(params[:id])
  end

  def destroy
    @url = Url.find(params[:id])
    @url.destroy

    redirect_to root_path
  end

  private

  def url_params
    params.permit(:long_url)
  end
end
