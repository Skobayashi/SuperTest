
set :repository, "git@github.com:Skobayashi/SuperTest.git"

set :scm,  :git
set :deploy_to,   "/var/www/SuperTest"
set :deploy_via, :copy
set :git_shallow_clone, 1
set :keep_releases, 3
set :branch, "master"

set :user,        "ec2-user"
set :use_sudo,   true
ssh_options[:auth_methods]  = %w( publickey )
ssh_options[:keys]          = %w( ~/.ssh/a_1.pem )
ssh_options[:forward_agent] = %w( true )
default_run_options[:pty]=true

role :web, "ec2-54-248-142-5.ap-northeast-1.compute.amazonaws.com"
#role :web, "54.248.241.143" # Your HTTP server, Apache/etc

#desc "Fix permission"
#task :fix_permissions, :roles => [ :app, :db, :web ] do
    #run "#{sudo} chmod 777 -R #{shared_path}/log"
#end

#task :exceed_link do
    #run "#{sudo} ln -s /ebs/DATA/gif/ /data/FRONT/current/public_html/resources/"
#end
#task :make_tmp do
    #run "#{sudo} chmod 777 /tmp/gemini"
#end

#after "deploy", :exceed_link, :make_tmp
#after "deploy:setup", :fix_permissions
