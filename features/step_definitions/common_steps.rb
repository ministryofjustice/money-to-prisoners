Given(/^(\d+) (\w+) exist$/) do |count, klass|
  create_list(klass.singularize.to_sym, count.to_i)
end
