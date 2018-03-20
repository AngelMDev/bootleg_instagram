class EntriesController < ApplicationController
  def index
    @entries=Entry.all
  end

  def create
    entry=Entry.create!(entry_params)
    redirect_to entry
  end

  def new
    @entry = Entry.new
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    entry = Entry.find(params[:id])
    entry.update!(entry_params)
    redirect_to entry
  end

  private

  def entry_params
    params.require(:entry).permit(:author,:photo_url,:date_taken)
  end
  
end