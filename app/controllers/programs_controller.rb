class ProgramsController < ApplicationController
  include AbstractController::Rendering
  include ActionView::Layouts
  append_view_path "#{Rails.root}/app/views"
  skip_before_action :verify_authenticity_token
  before_action :program_params, only: [:create, :update]
  before_action :find_program, only: [:edit, :update]

  def new
    @programs = Program.new
    @programs.discount_rules.build
    @programs.discount_rules.first.upc_lists.build
    render "programs/index"
  end

  def create
    @programs = Program.new(program_params)

    if @programs.save
      redirect_to new_program_path
    else
      raise "Program could not be saved"
    end
  end

  def edit
    render "programs/index"
  end

  def update
    if @programs.update(program_params)
      redirect_to new_program_path
    else
      raise "Program could not be updated"
    end
  end

  private

  def program_params
    params.require(:program).permit(
      :id,
      :authenticity_token,
      :name,
      discount_rules_attributes: [
        :name,
        :_destroy,
        upc_lists_attributes: [
          :name,
          # :upc_list_items_csv,
          :_destroy
        ]])
  end

  def find_program
    @programs = Program.find(params[:id])
  end
end
