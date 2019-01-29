# frozen_string_literal: true

class Api::Teachers::StudentsController < Api::Teachers::BaseController
  def create
    Teachers::Students::Operation::Create.call(
      student: student_params
    )
    render json: {}, status: :ok
  end

  private

  def student_params
    params.require(:student).permit(:login_id, :name, :school, :password, :password_confirmation)
  end
end