# ApplicationController
class ApplicationController < ActionController::Base
  def health
    head 200
  end
end
