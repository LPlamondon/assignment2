class PeopleController < ApplicationController
    
    def index
        @people = Person.all
    end
    
    def display
        @people = Person.all        
    end
    
    def show
        @person = Person.find(params[:id])
    end
    
    def new
        @person = Person.new
    end
    
    def edit
        @person = Person.find(params[:id])
    end
  
    def create
        @person = Person.new(person_params)
        
        if @person.save
            redirect_to @person
        else
            render 'new'
        end
    end
    
    def update
        @person = Person.find(params[:id])
        
        if @person.update(person.params)
            redirect_to @person
        else
            render 'edit'
        end
        
    end
    
    def destroy
        @person = Person.find(params[:id])
        @person.destroy
        
        redirect_to people_path
    end
    
    private
        def person_params
            params.require(:person).permit(:name, :weight, :height, :red, :green, :blue, :country, :gender, :age, :language)
        end
end