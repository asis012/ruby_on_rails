class PostController < ApplicationController
    
    def index
       @title = "About"
       @content  = "THis is a contennt file from controller to view dynamic"
    end

    def new
      #render html: "haha"
    end


    def create
        render plain:  parama[:post].inspect
    end


  
  
  end
  