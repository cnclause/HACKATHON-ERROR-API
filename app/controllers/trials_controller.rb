class TrialsController < ApplicationController
    def index
        @trials = Trial.all
        render json: @trials
    end
end
