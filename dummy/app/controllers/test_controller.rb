# encoding: utf-8
class TestController < ApplicationController
  def index
    session[:counter] ||= 0
    session[:counter]  += 1
  end
end
