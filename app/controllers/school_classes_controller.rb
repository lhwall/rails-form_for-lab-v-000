class SchoolClassesController < ApplicationController

  def new
  end

  def create
    @school_class = SchoolClass.create({:title => "Computer Science", :room_number => 5})
    @school_class.save
  end

  def show
  end

  def edit
  end

  def update
  end

end
