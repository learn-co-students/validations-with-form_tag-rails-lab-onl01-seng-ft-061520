class AuthorsController < ApplicationController
  def show
    set_author
  end

  def new
    @author = Author.new
  end

  def edit
    set_author
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def set_author
    @author = Author.find(params[:id])
  end
end
