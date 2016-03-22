class RepostingsController < ApplicationController
    def create
        @remicropost = Micropost.find( params[:micropost_id])
        @micropost = current_user.microposts.build( content: @remicropost.content, reposted_user_id: @remicropost.user_id)
        @micropost.save
        
        redirect_to root_path
    end
end
