require 'yaml'

module Sass::Script::Functions
  def yaml(variable)
  	config_file = 'config/config.yml'

  	if (File.file?(config_file))
	  	obj = YAML.load_file(config_file)
      if !obj['variables'][variable.to_s].nil?
        value = obj['variables'][variable.to_s]
        if(value.is_a?(String))
          return Sass::Script::Value::String.new(value.to_s)
        elsif (value.is_a?(Array))
          value.each_with_index do |elem, i|
            value[i]= Sass::Script::Value::String.new(elem.to_s)
          end
          return Sass::Script::Value::List.new(value, ",")
        end
      else
        return Sass::Script::Value::String.new('not-exists')
      end
  	else
  		p 'Config File not exists. We are looking for a config/config.yml'
  	end

    return Sass::Script::Value::String.new('auto')
  end
end
