class GossipsController < ApplicationController
 
  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    #@gossip = Gossip.update(gossip_params)

    if @gossip.update(gossip_params)

    redirect_to root_path
    else
    render 'edit' 
    end

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

  def destroy
     @gossip = Gossip.find(params[:id])
     @gossip.destroy
     redirect_to root_path
  end

  def gossip_params
    params.permit(:content, :anonymous_author)
  end 
end


