class GossipsController < ApplicationController
 
  def index
    @gossips = Gossip.all
  end

  def new
    @gossips = Gossip.new
  end

  def edit
  end

  def update
  end

  def create
    @gossip = Gossip.new
    @gossip.content = params[:content]
    @gossip.anonymous_author = params[:anonymous_author]
    
    if @gossip.save
    redirect_to @gossip
    else
    render 'new' 
    end

  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def delete
     @gossip.destroy
  end
end
