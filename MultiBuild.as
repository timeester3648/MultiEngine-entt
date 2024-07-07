void main(MultiBuild::Workspace& workspace) {	
	auto project = workspace.create_project(".");
	auto properties = project.properties();

	properties.name("entt");
	properties.binary_object_kind(MultiBuild::BinaryObjectKind::eNone);
	project.license("./LICENSE");

	project.include_own_required_includes(true);
	project.add_required_project_include({
		"./include"
	});

	properties.files({
		"./src/**.h",
		"./src/**.hpp"
	});

	{
		MultiBuild::ScopedFilter _(workspace, "project.compiler:VisualCpp");
		properties.files("./natvis/**.natvis");
	}
}