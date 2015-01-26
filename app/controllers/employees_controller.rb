class EmployeesController < ApplicationController
  caches_action :index, :show unless Rails.env.development?

  def index
    @employees = Employee.order('created_at ASC')
  end

  def show
    @employee = Employee.find_by_slug(params[:id])

    if @employee.blank? && employee_301 = Employee.find(params[:id])
      return redirect_to employee_301
    end
  end

end
