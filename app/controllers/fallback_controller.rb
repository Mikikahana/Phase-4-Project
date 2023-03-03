class FallbackController < ActionController::Base
    def def index
        render file: 'public/index.html'
    end
end