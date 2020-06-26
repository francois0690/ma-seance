class SpecialitiesController < ApplicationController
    def show
        @specialities = activities.specialities
    end
end
