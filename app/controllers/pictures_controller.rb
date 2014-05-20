class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new
    @picture.source = params[:source]
    @picture.caption = params[:caption]

    if @picture.save
      redirect_to "/pictures", :notice => "Picture created successfully."
    else
      render 'new'
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    @picture.source = params[:source]
    @picture.caption = params[:caption]

    if @picture.save
      redirect_to "/pictures", :notice => "Picture updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])

    @picture.destroy

    redirect_to "/pictures", :notice => "Picture deleted."
  end
end
