desc "run the server for lobster"
task :default do
  sh "ruby lobster.rb"
end

desc "run the server for protectedlobster"
task :protected do
  sh "ruby protectedlobster.rb"
end

desc "run the client with user and password flip left"
task :protectedleft do
  sh %q{curl -v --basic -u casiano:secreto 'http://localhost:9292?flip=left'}
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
