class SchoolClassesController < ApplicationController

    def index
        @schoolclasses = SchoolClass.all
    end

    def show
        @schoolclass = SchoolClass.find(params[:id])
    end

    def new
        @schoolclass = SchoolClass.new
    end

    def create
        @schoolclass = SchoolClass.new(SchoolClass_params(:title, :room_number))
        @schoolclass.save
        redirect_to SchoolClass_path(@SchoolClass)
    end

    def update
        @schoolclass = SchoolClass.find(params[:id])
        @schoolclass.update(SchoolClass_params(:title, :room_number))
        redirect_to SchoolClass_path(@schoolclass)
    end

    def edit
        @schoolclass = SchoolClass.find(params[:id])
    end






    private
    
    def SchoolClass_params(*arg)
        params.require(:SchoolClass).permit(*arg)
    end 

end
