

template "/etc/security/limits.conf" do
  source "limits.conf.erb"
  variables( :limits => node['limits'].to_hash )
end

# upstart pukes if you give it a limit it doesn't know, so it needs to be filtered
upstart_limits = [
  "as",
  "core",
  "cpu",
  "data",
  "fsize",
  "memlock",
  "msgqueue",
  "nice",
  "nofile",
  "nproc",
  "rss",
  "rtprio",
  "sigpending",
  "stack"
]

filtered_limits = node['limits']['*'].to_hash.select{|k,v| upstart_limits.include?(k)}

bash "restart runit" do
  user "root"
  cwd "/tmp"
  code <<-EOH
    kill -HUP 1
    stop runsvdir
    sleep 2
    start runsvdir
  EOH
  action :nothing
end

if node['platform'] == "ubuntu"
  template "/etc/init/runsvdir.conf" do
    source "runsvdir.conf.erb"
    variables({ :filtered_limits => filtered_limits })
    # 2013-08-27 jtimberman: comment this out until such time as we
    # are ready to bounce every runit service (system updates is a
    # good time to do that...)
    #notifies :run, "bash[restart runit]", :immediately
  end
end
