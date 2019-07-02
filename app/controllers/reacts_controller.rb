class ReactsController < ApplicationController

    def create
        @react = React.create(react_params)
    end

    private

    def react_params
        params.require(:react).permit(:user_id, :post_id, :type, :completion)
    end
end
