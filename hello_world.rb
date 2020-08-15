require 'open3'

puts "Ruby: I love hello world"
system('rustc', 'hello_world.rs') or raise "Ruby: Failed to compile hello_world.rs"
Open3.popen2('hello_world') do |stdin, stdout, status_thread|
 stdout.each_line do |line|
   puts "#{line}"
 end
 raise "Ruby: Hello world failed :("  unless status_thread.value.success?
end
