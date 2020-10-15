require "sinatra"
require "sinatra/reloader"
require "./lib/project"
require "./lib/volunteer"
require "pry"
require "pg"
require('dotenv/load')

also_reload "lib/**/*.rb"

DB = PG.connect({:dbname => "volunteer_tracker", :password => ENV['PG_PASS']})


#Main Page
get("/") do
  @projects = Project.all()
  erb(:home)
end

#Add a new project
post("/") do
  name = params.fetch("name")
  new_project = Project.new({:name => name, :id => nil})
  new_project.save
  redirect "/"
end

#list of projects with volunteers
get("/projects/:id") do
  @project_id = params[:id]
  @project = Project.find(params[:id])
  @volunteers = @project.volunteers()
  erb(:volunteer)
end

#Update and delete project
get('/projects/:id/edit') do
  @project = Project.find(params.fetch('id').to_i())
  erb(:edit_project)
end

post "/projects/:id/volunteers" do
  project_id = params[:id]
  @project = Project.find(params[:id])
  name = params["name"]
  volunteer = Volunteer.new(:project_id => @project.id, :name => name)
  volunteer.save
  redirect to ?? (:volunteer)
end

#Delete a project
delete('/projects/:id') do
  @project = Project.find(params.fetch('id').to_i())
  @project.delete()
  @projects = Project.all()
  erb(:projects)
end


#edit volunteer
patch("/volunteer/:id/edit") do
  name = params["name"]
  @volunteer = Volunteer.find(params["id"].to_i)
  @volunteer.update({:name => name})
  redirect "/volunteer/#{@volunteer.id}"
end
