Self-learning config files
==========================

This build a sets of servers with log, dns, backup and some others tools.

Will note be usefull for anyone except as syntax example for cfengine3.

Install
-------

```bash
# Building the repository tree
mkdir -p /data
cd /data
# Get CFengine3
apt-get install cfengine3
# Getting the repos
git clone https://github.com/rd2b/kimarchi.git
mv kimarchi github-repository
ln -sf github-repository cf-repos
git clone https://github.com/rd2b/cfengine-bacula.git
# Initializing first files
mkdir /var/lib/cfengine3/masterfiles/
cp /data/cf-repos/groups/cfengine/etc/cfengine3/* /var/lib/cfengine3/masterfiles/
cp cfengine-bacula/bacula.cf /var/lib/cfengine3/masterfiles/

cp /data/cf-repos/groups/cfengine/etc/cfengine3/* /etc/cfengine3/
cp cfengine-bacula/bacula.cf /etc/cfengine3/

# Run cf-agent twice to make sure every promise gets updated
# -DCFpackage updates some packages
/etc/init.d/cfengine3 restart
cf-agent -IK -DCFpackage

cf-runagent --interactive -H127.0.0.1

cf-agent -IK -DCFpackage

```

