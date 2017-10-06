class LaughTracksApp < Sinatra::Base

  get '/comedians' do
    if Comedian.all.where(:age)
      erb :index
    else
      Comedian.all
      erb :index
    end
  end
end
