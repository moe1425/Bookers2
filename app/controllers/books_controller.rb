class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  # 投稿データの保存
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    # book/showページに移動
    redirect_to book_path(@book)
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def destroy
    # 削除するBookレコードを取得
    @post_image = Book.find(params[:id])
    @post_image.destroy
    # PostImageの一覧ページへのパス
    redirect_to books_path
  end

    # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :image, :body)
  end

end
