class ConditionsController < ActionController::Base

 def destroy
    m = Condition.find_by_id(params["condition_id"])
    m.destroy
    redirect_to "/conditions"
  end

  def edit
    @condition = Condition.find_by_id(params["condition_id"])
  end

  def filter
    search_term = params["term"]
    @conditions = Condition.where("condition_name LIKE ? OR condition_id = ?", "%#{search_term}%", search_term)
    render 'index'
  end

  def update
    @condition = Condition.find_by_id(params["condition_id"])
    @condition.condition_name = params[:condition_name]
    @condition.condition_category_id = params[:condition_category_id]
    @condition.save
    redirect_to "/conditions"
  end

  def create
    @condition = Condition.new
    @condition.condition_name = params[:condition_name]
    @condition.condition_category_id = params[:condition_category_id]
    @condition.save
    redirect_to "/conditions"
  end

  def index
    @conditions = Condition.all
  end

  def show
    @condition = Condition.find_by_id(params["condition_id"])
  end

  def new
  @condition = Condition.new
  end

end
