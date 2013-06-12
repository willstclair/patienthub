class TreatmentsController < ApplicationController

 def destroy
    m = Treatment.find_by_id(params["treatment_id"])
    m.destroy
    redirect_to "/treatments"
  end

  def edit
    @treatment = Treatment.find_by_id(params["treatment_id"])
  end

  def filter
    search_term = params["term"]
    @treatments = Treatment.where("treatment_name LIKE ? OR treatment_id = ?", "%#{search_term}%", search_term)
    render 'index'
  end

  def update
    @treatment = Treatment.find_by_id(params["treatment_id"])
    @treatment.treatment_name = params[:treatment_name]
    @treatment.treatment_category_id = params[:treatment_category_id]
    @treatment.save
    redirect_to "/treatments"
  end

  def create
    @treatment = Treatment.new
    @treatment.treatment_name = params[:treatment_name]
    @treatment.treatment_category_id = params[:treatment_category_id]
    @treatment.save
    redirect_to "/treatments"
  end

  def index
    @treatments = Treatment.all
  end

  def show
    @treatment = Treatment.find_by_id(params["treatment_id"])
  end

  def new
  @treatment = Treatment.new
  end

end
