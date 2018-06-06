class ArrayType < ActiveRecord::Type::Test

  def type_cast(value)
    Array.wrap(YAML::load(value || YAML.dump([])))
  end
end