class QuestionsController < ApplicationController
    def index
        @questions = Question.all
    end
    
    def show
        @question = Question.find(params[:id])
        end

    def new
        @question = Question.new
    end
    
    def create
        @question = Question.new(params.require(:question).permit(:title, :body, :resolved))
        
        if @question.save
            flash[:notice] = "Question saved."
            redirect_to @question
        else
            flash[:error] = "There was an error saving the question. Please try again."
            render :new
        end
    end
    
     
    def edit
        @question = Question.find(params[:id])
    end
    
    def update
        @question = Question.find(params[:id])
        if @question.update_attributes(params.require(:question).permit(:title, :body, :resolved))
            flash[:noteice] = "Question was updated."
            redirect_to @question
        else
            flash[:error] = "There was an error saving the question. Please try again."
            render :new
        end
    end

  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      flash[:notice] = "Question successfully deleted."
      redirect_to question_path
    else
      flash[:error] = "There was an error deleting the question. Please try again."
      redirect_to question_path 
    end
  end
end