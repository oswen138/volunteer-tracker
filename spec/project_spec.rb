require "spec_helper"


describe(Project) do
  describe("#initialize") do
    it("is initialized with name and id") do
      project_one = Project.new({:name => "Project Spruce", :id => nil})
      expect(project_one.name()).to(eq("Project Spruce"))
    end
  end

  
end
