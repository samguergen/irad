class RecordLabelsController < ApplicationController

  def index
    @record_labels = RecordLabel.all
  end

  def show
    @record_label = RecordLabel.find(params[:id])
  end

  def new
    @record_label = RecordLabel.new
  end

  def create
    record_label = RecordLabel.find_or_create_by(record_label_params)
    if record_label.save
      redirect_to record_label_path(record_label)
    else
      redirect_to new_record_label_path
    end
  end

  def edit
    @record_label = RecordLabel.find(params[:id])
  end

  def update
    record_label = RecordLabel.find(params[:id])
    if record_label.update_attributes(record_label_params)
      redirect_to record_label_path(record_label)
    else
      redirect_to edit_record_label_path(record_label)
    end
  end

  def destroy
    record_label = RecordLabel.find(params[:id])
    record_label.destroy
    redirect_to record_labels_path
  end

  def record_label_params
    params.require(:record_label).permit(
      :name,
      :founding_date)
  end
end