class InjuryController < ActionController::Base

def destroy
    m = Injury.find_by_id(params["id"])
    m.destroy
    redirect_to "/injuries"
  end

  def edit
    @injury = Injury.find_by_id(params["id"])
  end

  def update
    @injury = Injury.find_by_id(params["id"])
    @injury.title = params[:title]
    @injury.year = params[:year]
    @injury.save
    redirect_to "/injuries"
  end

  def create
    @injury = Injury.new
    @injury.title = params[:title]
    @injury.year = params[:year]
    @injury.save
    redirect_to "/injuries"
  end

  def index
    @injuries = injury.all
  end

  def show
    @injury = injury.find_by_id(params["id"])
  end

  def new
  @injury = Injury.new
  end

end
