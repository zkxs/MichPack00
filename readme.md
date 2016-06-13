# MichPack 00

## Recommended Launch Options
```
-Xmx2500M -Xms2000M -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode -XX:-UseAdaptiveSizePolicy -Xmn128M -XX:PermSize=256m -XX:NewRatio=3 -XX:SurvivorRatio=3 -XX:TargetSurvivorRatio=80 -XX:MaxTenuringThreshold=8 -XX:MaxGCPauseMillis=10 -XX:GCPauseIntervalMillis=50 -XX:MaxGCMinorPauseMillis=7 -XX:+ExplicitGCInvokesConcurrent -XX:+UseCMSInitiatingOccupancyOnly -XX:CMSInitiatingOccupancyFraction=60 -XX:+BindGCTaskThreadsToCPUs -Xnoclassgc
```
