class ArticlesController < ApplicationController

	http_basic_authenticate_with name: "dhh", password: "secret",
		except: [:index, :show]


	def new
		@article = Article.new
	end

	def create  #fields of the form sent as params to HERE
		# render plain: params[:article].inspect #render the params hash in the browser
		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			render 'new' #when save is false
		end
	end

    def show
	  @article = Article.find(params[:id])
	end

	def index
		@articles = Article.all
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article  #this is weird to me....
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end


##### private ====================================

	private  #define/allow strong parameters
		def article_params
    	params.require(:article).permit(:title, :text)
  	end


end
