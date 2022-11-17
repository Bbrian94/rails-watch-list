class ListsController < ApplicationController
  before_action :set_list, only: [:edit, :show, :update]
end
