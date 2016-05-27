class GuestlistsController < ApplicationController
  def index
    @guestlists = Guestlist.all
  end

  def show
    @guestlist = Guestlist.find(params[:id])
  end

  def new
    @guestlist = Guestlist.new
  end

  def edit
    @guestlist = Guestlist.find(params[:id])
  end

  def create
    @guestlist = Guestlist.new(guestlist_params)

    if @guestlist.save
      redirect_to @guestlist
    else
      render 'new'
    end
  end

  def update
    @guestlist = Guestlist.find(params[:id])

    if @guestlist.update(guestlist_params)
      redirect_to @guestlist
    else
      render 'edit'
    end
  end


  def destroy
    @guestlist = Guestlist.find(params[:id])
    @guestlist.destroy

    redirect_to guestlists_path
  end

  private
    def guestlist_params
      params.require(:guestlist).permit(:title, :description)
    end
end


