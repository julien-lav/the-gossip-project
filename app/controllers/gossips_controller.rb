class GossipsController < ApplicationController
 
  def index
    @gossips = Gossip.all
  end

  def new
    @gossips = Gossip.new
  end

  def edit
    @gossips = Gossip.find(params[:id])
  end

  def update
    
  end

  def create
    @gossip = Gossip.new(gossip_params)
    # @gossip.content = params[:content]
    # @gossip.anonymous_author = params[:anonymous_author]
    
    if @gossip.save
    redirect_to root_path
    else
    render 'new' 
    end

  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def delete
     @gossip = Gossip.find(params[:id])
     @gossip.destroy
  end

  def gossip_params
    params.permit(:content, :anonymous_author)
  end 
end
