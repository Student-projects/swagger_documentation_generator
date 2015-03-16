note
	description : "swagger_documentation_generation application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		do
			create doc_generator.make
			doc_generator.create_documentation_from_file ("/home/tobias/graph/node.e")
		end

feature
	doc_generator: SWAGGER_DOC_GENERATOR

end
