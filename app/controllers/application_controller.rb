class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  before do
    content_type :json
  end

  before do
    if request.body.read.size > 0
      request.body.rewind
      @params.merge!(JSON.parse(request.body.read, symbolize_names: true))
    end
  end

end
