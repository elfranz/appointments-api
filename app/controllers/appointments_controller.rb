class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    render json: @appointment
  end

  def create
    appointment = Appointment.new(create_params)
    if appointment.save
      render json: appointment, status: :created
    else
      render status: :unprocessable_entity
    end
  end

  private

  def create_params
    required = %i[name date]
    required.each { |required_param| params.require(required_param) }
    params.permit(required)
  end
end
