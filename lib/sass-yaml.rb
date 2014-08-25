require 'yaml'

obj = YAML.load_file('config/config.yml')

# module Sass::Script::Functions
#   def variable()
#     obj = YAML.load_file('config/config.yml')
#     Sass::Script::Value::String.new(obj['twig']['prova'])
#   end
# end

module Sass
	module Yaml
		def variable()
		    obj = YAML.load_file('config/config.yml')
		    obj['context']['variable']
		    # Sass::Script::Value::String.new(obj['twig']['prova'])
		 end	
	end
end
