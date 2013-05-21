class ConditionController < ActionController::Base

 def destroy
    m = Condition.find_by_id(params["condition_id"])
    m.destroy
    redirect_to "/conditions"
  end

  def edit
    @condition = Condition.find_by_id(params["condition_id"])
  end

  def update
    @condition = Condition.find_by_id(params["condition_id"])
    @condition.category = params[:category]
    @condition.save
    redirect_to "/conditions"
  end

  def create
    @condition = Condition.new
    @condition.category = params[:category]
    @condition.save
    redirect_to "/conditions"
  end

  def index
    @conditions = condition.all
  end

  def show
    @condition = condition.find_by_id(params["condition_id"])
  end

  def new
  @condition = Condition.new
  end

end
