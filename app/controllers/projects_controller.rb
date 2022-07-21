class ProjectsController < ApplicationController

    resource_description do
        description 'Portfolio API'
        short 'Portfolio API'
        formats ['json']
        deprecated false
    end

    api :GET, '/projects', 'List all projects'
    description 'View a list of all projects.'
    def index
        projects= Project.all
        render json: projects
    end

    api :GET, '/projects/:id', 'View a project'
    description 'View details for a single project.'
    param :id, Integer, desc: 'id of the requested project'
    def show
         project = Project.find(params[:id])
         render json: project
    end

    api :POST, '/projects', 'Create a project'
    param :title, String, :desc => 'Title of the project', :required => true
    def create
        render json: params['project']
        #@project = Project.new(project_params)
        #if @project.save
        #    render json: project
        #else
        #    render json: @project, status: :unprocessable_entity
        #end
    end
    
end
