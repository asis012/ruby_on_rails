class MicropostsController < ApplicationController

    before_action :log_at_first, only: [:create, :destroy]

    def create
        @micropost = current_user.microposts.build(micropost_params)
        if @micropost.save
          flash[:success] = "Post created successfully"
          redirect_to root_url
        else
            @feed_items = current_user.feed.paginate(page: params[:page])
          render 'static_pages/home'
        end
    end
  
    def destroy
    @micropost = current_user.microposts.find_by(id: params[:id])
    @micropost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to root_url
    end

    private

    def micropost_params
      params.require(:micropost).permit(:content, :picture)
    end
end
