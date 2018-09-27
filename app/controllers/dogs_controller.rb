class DogsController < ApplicationController
  def index
    @dogs = Dog.all.to_a
  end

  def show
    @dog = Dog.find(params[:id])
    @employees = @dog.employees
  end
end
