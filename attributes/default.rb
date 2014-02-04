
#
# security conscious things like pam do this:
# 
#   for(i=0;i<rlimit_nofile;i++) { close(i) }
#
# which makes huge values of nofile (e.g. 1_000_000) result in long app pauses.
#
default['limits']['*']['nofile']['hard'] = 65536
default['limits']['*']['nofile']['soft'] = 65536
# data: default on ubuntu is unlimted for both
default['limits']['*']['data']['hard'] = "unlimited"
default['limits']['*']['data']['soft'] = "unlimited"
# fsize: default on ubuntu is unlimited for both
default['limits']['*']['fsize']['hard'] = "unlimited"
default['limits']['*']['fsize']['soft'] = "unlimited"
# rss: default on ubuntu is unlimited for both
default['limits']['*']['rss']['hard'] = "unlimited"
default['limits']['*']['rss']['soft'] = "unlimited"
# setting the stack size makes erlang and ruby unhappy
#default['limits']['*']['stack']['hard'] = "unlimited"
#default['limits']['*']['stack']['soft'] = 20480
# cpu: default on ubuntu is unlimited for both
default['limits']['*']['cpu']['hard'] = "unlimited"
default['limits']['*']['cpu']['soft'] = "unlimited"
# nproc: don't let undergrads on your servers, and don't release forkbombs to prod
default['limits']['*']['nproc']['hard'] = "unlimited"
default['limits']['*']['nproc']['soft'] = "unlimited"
# as: default on ubuntu is unlimited for both
default['limits']['*']['as']['hard'] = "unlimited"
default['limits']['*']['as']['soft'] = "unlimited"
# maxlogins: default on ubuntu is unlimited for both
default['limits']['*']['maxlogins']['hard'] = "unlimited"
default['limits']['*']['maxlogins']['soft'] = "unlimited"
# maxsyslogins: default on ubuntu is unlimited for both
default['limits']['*']['maxsyslogins']['hard'] = "unlimited"
default['limits']['*']['maxsyslogins']['soft'] = "unlimited"
# locks: default on ubuntu is unlimited for both
default['limits']['*']['locks']['hard'] = "unlimited"
default['limits']['*']['locks']['soft'] = "unlimited"
# msgqueue: default on ubuntu is >800k, which is a bit pointless
default['limits']['*']['msgqueue']['hard'] = "unlimited"
default['limits']['*']['msgqueue']['soft'] = "unlimited"
# 
default['limits']['*']['core']['hard'] = "unlimited"
default['limits']['*']['core']['soft'] = 0
# 'new' stuff post-rhel4 kernels i haven't tested for years:
#default['limits']['*']['memlock']['hard'] = 65536
#default['limits']['*']['memlock']['soft'] = 65536
#default['limits']['*']['priority']['hard'] =
#default['limits']['*']['priority']['soft'] =
#default['limits']['*']['sigpending']['hard'] = 16382
#default['limits']['*']['sigpending']['soft'] = 16382
#default['limits']['*']['nice']['hard'] = 20
#default['limits']['*']['nice']['soft'] = 20
#default['limits']['*']['rtprio']['hard'] = 0
#default['limits']['*']['rtprio']['soft'] = 0 
