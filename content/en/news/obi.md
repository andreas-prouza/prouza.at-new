---
title: "OBI (Object Builder for i)"
date: 2026-11-10T09:00:00+01:00
image: "/img/obi/OBI-Logo-2.png"
aliases: ["/posts/obi/"]
---

![obi](/img/obi/OBI-Logo-2.png)

Automated build tool [OBI](https://github.com/andreas-prouza/ibm-i-build-obi).

* Dependency list
* Correct sequence of builds
* Integration in RDi and vscode

Details can be found on GitHub: https://github.com/andreas-prouza/ibm-i-build-obi


### As extension directly in vscode

![rdi](/img/obi/build-summary.png)

### Build Summary

* Each task contains its own job log & spool file  
  No more searching through long job logs

![compile-overview](/img/obi/compile-overview.png)


### Show preview

* What has changed and needs to be compiled
* Dependent sources
* Sequence of the build
* Generated commands for each source

![changes](/img/obi/vscode-show-change.png)
