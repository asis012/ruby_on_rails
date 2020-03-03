class PostController < ApplicationController
    
    def index
       @title = "About"
       @content  = "THis is a contennt file from controller to view dynamic"
    end

    def new
      
    end


    def create
        #render html: "haha"
        render plain:  params[:post]
    end
    def contact
        end

  
  
  end
  