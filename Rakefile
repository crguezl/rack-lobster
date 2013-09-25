desc "run the server"
task :default do
  sh "ruby lobster.rb"
end

desc "run the client flip left"
task :left do
  sh %q{curl -v 'http://localhost:9292?flip=left'}
end

desc "run the client flip right"
task :right do
  sh %q{curl -v 'http://localhost:9292?flip=right'}
end

desc "run the client. Generate exception"
task :crash do
  sh %q{curl -v 'http://localhost:9292/?flip=crash'}
end
