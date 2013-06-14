class DiagnosesController < ApplicationController

  def destroy
    m = Diagnosis.find_by_id(params[:id])
    m.destroy
    redirect_to "/diagnoses"
  end

  def edit
    @diagnosis = Diagnosis.find_by_id(params[:id])
  end

  def filter
    search_term = params["term"]
    @diagnoses = Diagnosis.where("treatment_name LIKE ? OR condition_name = ?", "%#{search_term}%", search_term)
    render 'index'
  end

  def update
    @diagnosis = Diagnosis.find_by_id(params[:id])
    @diagnosis.treatment_name = params[:treatment_name]
    @diagnosis.condition_name = params[:condition_name]
    @diagnosis.user_name = params[:user_name]
    @diagnosis.save
    redirect_to "/diagnoses"
  end

  def create
    @diagnosis = Diagnosis.new
    @diagnosis.treatment_name = params[:treatment_name]
    @diagnosis.condition_name = params[:condition_name]
    @diagnosis.user_name = params[:user_name]
    @diagnosis.save
    redirect_to "/diagnoses"
  end

  def index
    @diagnoses = Diagnosis.all
  end

  def show
    @diagnosis = Diagnosis.find_by_id(params[:condition_id])
  end

  def new
  @diagnosis = Diagnosis.new
  end

end
