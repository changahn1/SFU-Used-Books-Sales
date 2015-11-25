class BooksController < ApplicationController
    before_action :find_book, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, only: [:new, :edit]
    
    def index 
        if params[:department].blank?
            @books = Book.all.order("created_at DESC")
        else
            @department_id = Department.find_by(name: params[:department]).id
            @books = Book.where(:department_id => @department_id).order("created_at DESC")
        end
    end
    
    def show
    end
    
    def new
        @book = current_user.books.build
        @departments = Department.all.map {|c| [c.name, c.id]}
       
    end
    
    def create 
        @book = current_user.books.build(book_params)
        @book.department_id = params[:department_id]
        @book.user_username = current_user.username
        @book.user_email = current_user.email
       
        if @book.save
            redirect_to root_path
        else
            render 'new'
        end
    end
    
    def edit
          
        @departments = Department.all.map {|c| [c.name, c.id]}
      
        
    end
    
    def update
        @book.department_id = params[:department_id] 
        if @book.update(book_params)
               
           
            redirect_to book_path(@book)
        else
            render 'edit'
        end
    end
    
    def destroy
        @book.destroy
        redirect_to root_path
    end
    
    private
    
    def book_params
       params.require(:book).permit(:avatar, :title, :cname, :cnumber, :quality, :publisher, :campus, :price, :category_id) 
    end
    
    def find_book
        @book = Book.find(params[:id])
    end
    
end
