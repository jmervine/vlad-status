require 'vlad'

module Vlad
  module Status
    VERSION = '0.0.1' #:nodoc:
  end
end

namespace :vlad do

  def status_cmd(svr)

    master = "master"
    worker = "worker"
    psub = "**REPLACE**"
    
    ps = []
    ps << %(ps aux)
    ps << %(grep "#{svr}")
    ps << %(grep "#{psub}")
    ps << %(grep -v grep)
    ps << %(wc -l)

    cmd = []
    cmd << %(echo "Getting status for #{svr} on `hostname`")
    cmd << %(echo " #{master} processes running: `#{ps.join(" | ").gsub(psub, master)}`")
    cmd << %(echo " #{worker} processes running: `#{ps.join(" | ").gsub(psub, worker)}`")
    cmd.join(" && ")

  end

  namespace :web do
    desc "Status of web servers."
    remote_task :status, :roles => :web do
      run status_cmd(web.to_s)
    end
  end

  namespace :app do
    desc "Status of app servers."
    remote_task :status, :roles => :app do
      run status_cmd(app.to_s)
    end
  end

end

