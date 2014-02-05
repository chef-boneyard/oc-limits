#
# security conscious things like pam do this:
#
#   for(i=0;i<rlimit_nofile;i++) { close(i) }
#
# which makes huge values of nofile (e.g. 1_000_000) result in long app pauses.
#
default['limits']['star']['nofile']['hard'] = 65_536
default['limits']['star']['nofile']['soft'] = 65_536
# data: default on ubuntu is unlimted for both
default['limits']['star']['data']['hard'] = 'unlimited'
default['limits']['star']['data']['soft'] = 'unlimited'
# fsize: default on ubuntu is unlimited for both
default['limits']['star']['fsize']['hard'] = 'unlimited'
default['limits']['star']['fsize']['soft'] = 'unlimited'
# rss: default on ubuntu is unlimited for both
default['limits']['star']['rss']['hard'] = 'unlimited'
default['limits']['star']['rss']['soft'] = 'unlimited'
# setting the stack size makes erlang and ruby unhappy
# default['limits']['star']['stack']['hard'] = 'unlimited'
# default['limits']['star']['stack']['soft'] = 20480
# cpu: default on ubuntu is unlimited for both
default['limits']['star']['cpu']['hard'] = 'unlimited'
default['limits']['star']['cpu']['soft'] = 'unlimited'
# nproc: don't let undergrads on your servers, and don't release forkbombs to prod
default['limits']['star']['nproc']['hard'] = 'unlimited'
default['limits']['star']['nproc']['soft'] = 'unlimited'
# as: default on ubuntu is unlimited for both
default['limits']['star']['as']['hard'] = 'unlimited'
default['limits']['star']['as']['soft'] = 'unlimited'
# maxlogins: default on ubuntu is unlimited for both
default['limits']['star']['maxlogins']['hard'] = 'unlimited'
default['limits']['star']['maxlogins']['soft'] = 'unlimited'
# maxsyslogins: default on ubuntu is unlimited for both
default['limits']['star']['maxsyslogins']['hard'] = 'unlimited'
default['limits']['star']['maxsyslogins']['soft'] = 'unlimited'
# locks: default on ubuntu is unlimited for both
default['limits']['star']['locks']['hard'] = 'unlimited'
default['limits']['star']['locks']['soft'] = 'unlimited'
# msgqueue: default on ubuntu is >800k, which is a bit pointless
default['limits']['star']['msgqueue']['hard'] = 'unlimited'
default['limits']['star']['msgqueue']['soft'] = 'unlimited'
#
default['limits']['star']['core']['hard'] = 'unlimited'
default['limits']['star']['core']['soft'] = 0
# 'new' stuff post-rhel4 kernels i haven't tested for years:
# default['limits']['star']['memlock']['hard'] = 65536
# default['limits']['star']['memlock']['soft'] = 65536
# default['limits']['star']['priority']['hard'] =
# default['limits']['star']['priority']['soft'] =
# default['limits']['star']['sigpending']['hard'] = 16382
# default['limits']['star']['sigpending']['soft'] = 16382
# default['limits']['star']['nice']['hard'] = 20
# default['limits']['star']['nice']['soft'] = 20
# default['limits']['star']['rtprio']['hard'] = 0
# default['limits']['star']['rtprio']['soft'] = 0
