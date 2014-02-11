require 'sinatra/base'

module Pdfjs
  class Viewer < Sinatra::Base
    get '/external/*' do
      send_file File.join('external', params[:splat])
    end

    get '/src/*' do
      send_file File.join('src', params[:splat])
    end

    get '/*' do
      send_file File.join('web', params[:splat])
    end
  end
end
