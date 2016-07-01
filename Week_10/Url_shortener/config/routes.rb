Rails.application.routes.draw do

                    # controller#action
get '/:shortlink' => "links#index"

end

# localhost:3000/foo redirects to google.com
# input is short URL (foo)
# output is original URl (google.com)