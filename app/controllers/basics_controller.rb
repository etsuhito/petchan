class BasicsController < ApplicationController
  def index
    @basics = Basic.all.order(created_at: :desc)
  end
end