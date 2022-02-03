class TemplatesController < ApplicationController

    before_action :check_if_logged_in, except: [:index, :show]

    def index
        @templates = Template.all
    end

    def show
        @template = Template.find params[:id]
    end

    def create

    end

end
