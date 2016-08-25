## docker-jira

A cocker compose config file for creating an instance of Atlassian Confluence in
docker. Persists home data and config data across container updates by splitting
out directories as volumes (default mapped to /data/jira and
/data/jira-conf on the host).

Some caveats:
- Make sure the volume directories are readable by docker, the easiest way I've
been managing this is setting permissions to be 777.
- To initialise the contents of the home and data directories you might want to
create a container without the volumes, and copy the files out of the container
to the volumes. I've not tested this from the ground up, so I'm unsure how
jira will behave without these files pre-set.
- Only JIRA Core is installed by default. You can install JIRA software from the
admin GUI.
