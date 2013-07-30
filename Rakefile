desc "run the server"
task :default do
  sh "ruby lobster.rb"
end

desc "run the client"
task :client do
  sh %q{curl -v 'http://localhost:9292'}
end

desc "run the client. Generate exception"
task :client2 do
  sh %q{curl -v 'http://localhost:9292/?flip=crash'}
end
