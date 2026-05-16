# AIOps Incident Analysis Report - dev

## Environment
- Namespace: skillpulse-dev
- Generated At: Sat May 16 10:04:41 PM IST 2026

## Pod Health Snapshot

```
NAME                        READY   STATUS    RESTARTS   AGE    IP            NODE                 NOMINATED NODE   READINESS GATES
backend-5dc8565df8-6l8pj    1/1     Running   0          32m    10.244.2.13   skillpulse-worker2   <none>           <none>
frontend-76b7d9db7c-grwgl   1/1     Running   0          107m   10.244.1.3    skillpulse-worker    <none>           <none>
mysql-0                     1/1     Running   0          107m   10.244.2.3    skillpulse-worker2   <none>           <none>
```

## Detected Issues

```
observability/logs/output/dev/mysql.log:9:2026-05-16T14:48:04.868258Z 6 [Warning] [MY-010453] [Server] root@localhost is created with an empty password ! Please consider switching off the --initialize-insecure option.
observability/logs/output/dev/mysql.log:17:2026-05-16T14:48:07.414315Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
observability/logs/output/dev/mysql.log:19:2026-05-16T14:48:07.416304Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
observability/logs/output/dev/mysql.log:24:Warning: Unable to load '/usr/share/zoneinfo/iso3166.tab' as time zone. Skipping it.
observability/logs/output/dev/mysql.log:25:Warning: Unable to load '/usr/share/zoneinfo/leap-seconds.list' as time zone. Skipping it.
observability/logs/output/dev/mysql.log:26:Warning: Unable to load '/usr/share/zoneinfo/leapseconds' as time zone. Skipping it.
observability/logs/output/dev/mysql.log:27:Warning: Unable to load '/usr/share/zoneinfo/tzdata.zi' as time zone. Skipping it.
observability/logs/output/dev/mysql.log:28:Warning: Unable to load '/usr/share/zoneinfo/zone.tab' as time zone. Skipping it.
observability/logs/output/dev/mysql.log:29:Warning: Unable to load '/usr/share/zoneinfo/zone1970.tab' as time zone. Skipping it.
observability/logs/output/dev/mysql.log:49:2026-05-16T14:48:09.796540Z 0 [Warning] [MY-010068] [Server] CA certificate ca.pem is self signed.
observability/logs/output/dev/mysql.log:51:2026-05-16T14:48:09.798781Z 0 [Warning] [MY-011810] [Server] Insecure configuration for --pid-file: Location '/var/run/mysqld' in the path is accessible to all OS users. Consider choosing a different directory.
observability/logs/output/dev/events.txt:17:22m         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server could not find the requested resource (get pods.metrics.k8s.io)
observability/logs/output/dev/events.txt:18:22m         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend   failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server could not find the requested resource (get pods.metrics.k8s.io)
observability/logs/output/dev/events.txt:19:21m         Warning   FailedGetResourceMetric        horizontalpodautoscaler/backend   failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
observability/logs/output/dev/events.txt:20:21m         Warning   FailedComputeMetricsReplicas   horizontalpodautoscaler/backend   invalid metrics (1 invalid out of 1), first error is: failed to get cpu resource metric value: failed to get cpu utilization: unable to get metrics for resource cpu: unable to fetch metrics from resource metrics API: the server is currently unable to handle the request (get pods.metrics.k8s.io)
```

## Recent Cluster Events

```
15m         Normal    Scheduled                      pod/backend-5dc8565df8-ppmzv      Successfully assigned skillpulse-dev/backend-5dc8565df8-ppmzv to skillpulse-worker2
15m         Normal    Scheduled                      pod/backend-5dc8565df8-48kd7      Successfully assigned skillpulse-dev/backend-5dc8565df8-48kd7 to skillpulse-worker
15m         Normal    Started                        pod/backend-5dc8565df8-8bm2k      Container started
15m         Normal    ScalingReplicaSet              deployment/backend                Scaled up replica set backend-5dc8565df8 from 1 to 4
15m         Normal    SuccessfulRescale              horizontalpodautoscaler/backend   New size: 4; reason: cpu resource utilization (percentage of request) above target
15m         Normal    Pulled                         pod/backend-5dc8565df8-8bm2k      Container image "trainwithshubham/skillpulse-backend:latest" already present on machine and can be accessed by the pod
15m         Normal    Scheduled                      pod/backend-5dc8565df8-8bm2k      Successfully assigned skillpulse-dev/backend-5dc8565df8-8bm2k to skillpulse-worker
15m         Normal    Started                        pod/backend-5dc8565df8-48kd7      Container started
15m         Normal    Created                        pod/backend-5dc8565df8-48kd7      Container created
15m         Normal    Pulled                         pod/backend-5dc8565df8-48kd7      Container image "trainwithshubham/skillpulse-backend:latest" already present on machine and can be accessed by the pod
12m         Normal    Created                        pod/backend-5dc8565df8-fqsk9      Container created
12m         Normal    SuccessfulCreate               replicaset/backend-5dc8565df8     Created pod: backend-5dc8565df8-fqsk9
12m         Normal    SuccessfulRescale              horizontalpodautoscaler/backend   New size: 5; reason: cpu resource utilization (percentage of request) above target
12m         Normal    ScalingReplicaSet              deployment/backend                Scaled up replica set backend-5dc8565df8 from 4 to 5
12m         Normal    Scheduled                      pod/backend-5dc8565df8-fqsk9      Successfully assigned skillpulse-dev/backend-5dc8565df8-fqsk9 to skillpulse-worker2
12m         Normal    Pulled                         pod/backend-5dc8565df8-fqsk9      Container image "trainwithshubham/skillpulse-backend:latest" already present on machine and can be accessed by the pod
12m         Normal    Started                        pod/backend-5dc8565df8-fqsk9      Container started
12m         Normal    Killing                        pod/backend-load                  Stopping container backend-load
7m30s       Normal    Killing                        pod/backend-5dc8565df8-ppmzv      Stopping container backend
7m30s       Normal    SuccessfulDelete               replicaset/backend-5dc8565df8     Deleted pod: backend-5dc8565df8-ppmzv
7m30s       Normal    ScalingReplicaSet              deployment/backend                Scaled down replica set backend-5dc8565df8 from 5 to 4
7m30s       Normal    SuccessfulRescale              horizontalpodautoscaler/backend   New size: 4; reason: All metrics below target
6m30s       Normal    SuccessfulDelete               replicaset/backend-5dc8565df8     Deleted pod: backend-5dc8565df8-48kd7
6m30s       Normal    SuccessfulDelete               replicaset/backend-5dc8565df8     Deleted pod: backend-5dc8565df8-8bm2k
6m30s       Normal    SuccessfulDelete               replicaset/backend-5dc8565df8     Deleted pod: backend-5dc8565df8-fqsk9
6m30s       Normal    ScalingReplicaSet              deployment/backend                Scaled down replica set backend-5dc8565df8 from 4 to 1
6m30s       Normal    Killing                        pod/backend-5dc8565df8-fqsk9      Stopping container backend
6m30s       Normal    SuccessfulRescale              horizontalpodautoscaler/backend   New size: 1; reason: All metrics below target
6m30s       Normal    Killing                        pod/backend-5dc8565df8-8bm2k      Stopping container backend
6m30s       Normal    Killing                        pod/backend-5dc8565df8-48kd7      Stopping container backend
```

## Root Cause Summary

The environment had HPA metric collection warnings related to the Kubernetes Metrics API. This usually happens when metrics-server is not installed, not ready, or not configured correctly for a local kind cluster.


## Recommended Actions

- Verify all pods are Running and Ready.
- Check recent Kubernetes events before debugging application code.
- Confirm metrics-server is healthy if HPA metrics show unknown values.
- Review backend and database logs when API errors appear.
- Keep alerts connected to a valid notification contact point.

## Suggested Commands

```bash
kubectl get pods -n skillpulse-dev
kubectl get events -n skillpulse-dev --sort-by=.lastTimestamp
kubectl logs -n skillpulse-dev deployment/backend --tail=100
kubectl get hpa -n skillpulse-dev
```
