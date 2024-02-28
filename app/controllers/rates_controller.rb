class RatesController < ApplicationController
  before_action :authenticate_user!
  layout 'backend'

  def index
    @rates = Rate.all
  end
end
