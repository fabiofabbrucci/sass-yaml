require 'yaml'

module Sass::Script::Functions
  def yaml(variable)
  	config_file = 'config/config.yml'

  	if (File.file?(config_file))
	  	obj = YAML.load_file(config_file)
      if !obj['variables'][variable.to_s].nil?
	     return Sass::Script::Value::String.new(obj['variables'][variable.to_s])
      end
  	else
  		p 'Config File not exists. We are looking for a config/config.yml'
  	end

    return Sass::Script::Value::String.new('auto')
  end
end
