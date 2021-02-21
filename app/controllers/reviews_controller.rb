class ReviewsController < ApplicationController
    def index
        @review = Review.all.page(params[:page]).per(5).order(id: "DESC")
        end

    def new
        @review = Review.new
      end

     def create
    review = Review.new(review_params)
    if review.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:body,:title,:penname,:star)
  end
      
    
end
