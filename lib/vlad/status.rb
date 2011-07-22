require 'vlad'

module Vlad
  module Status
    VERSION = '0.0.2' 
  end
end

namespace :vlad do

  # Generate the bash command to output a clean status, it should look something like:
  #
  #   Getting status for <server type> on myserver.com
  #    master processes running: #
  #    worker processes running: #
  #
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

  desc "Status of web servers."
  remote_task :status_web do
    run status_cmd(web.to_s)
  end

  desc "Status of app servers."
  remote_task :status_app do
    run status_cmd(app.to_s)
  end

end

