desc 'Loading database.yml'

task :load_yaml do
  unless @database.nil? then YAML::ENGINE.yamler = 'syck' end
  file = open("#{Dir.pwd}/config/database.yml")
  file.each_line do |line|
    unless line =~ /^(#|\n+)/
      puts line
    end
  end
  file.close
  if YAML::load(open("#{Dir.pwd}/config/database.yml"))
    puts "Loaded database.yml!"
  else
    puts 'Failed to load database.yml!'
  end
end
