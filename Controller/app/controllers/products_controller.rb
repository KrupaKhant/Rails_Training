class ProductsController < AdminController
    before_action :require_admin, only: [:destroy]

    def index
        @products = Product.all
    end

    def show
        @product = Product.find(params[:id])
      end

    def new
        @product = Product.new
    end

    def create
        @product = Product.new(product_params)
        if @product.save
          redirect_to @product
        else
          render :new
        end
    end

    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_url, notice: 'Product was successfully deleted.'
    end
      
    def search
        @search_query = params[:search_query]
        @products = Product.where("name LIKE ?", "%#{@search_query}%")
    end
    
    private
    
    def search_params
        params.permit(:search_query)
    end

    def product_params
        params.require(:product).permit(:name, :price)
    end

end
