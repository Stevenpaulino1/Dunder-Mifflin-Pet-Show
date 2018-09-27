class EmployeesController < ApplicationController
  def index
    @employees = Employee.all.to_a
  end

  def show
    @employee = Employee.find(params[:id])
    @dog = @employee.dog
  end
end
