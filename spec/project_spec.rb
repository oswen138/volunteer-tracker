require "spec_helper"


describe(Project) do
  describe("#initialize") do
    it("is initialized with name and id") do
      project1 = Project.new({:name => "Project Spruce", :id => nil})
      expect(project1.name()).to(eq("Project Spruce"))
    end
  end
end
