class Project
  attr_reader :id
  attr_accessor :project_title

  def initialize(attributes)
    @project_title = attributes[:project_title]
    @id = attributes[:id]
  end

  def save
    saved_project = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
    @id = saved_project.first.fetch("id").to_i
  end
end