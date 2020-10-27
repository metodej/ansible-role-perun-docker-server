#!/bin/bash
docker stop perun_rpc
docker stop perun_engine
docker stop perun_ldapc
systemctl restart postgres
systemctl restart slapd
docker start perun_rpc
docker start perun_engine
docker start perun_ldapc
docker start perun_apache
docker restart portainer