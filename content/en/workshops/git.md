---
title: "IBM i development with GIT"
group: development
weight: 30
packages:
  - name: "Basic overview"
    duration: "1/2 day"
    items:
      - "Overview of how GIT works on IBM i and what it brings to everyday development"
      - "Sources in the IFS or in source files – pros and cons"
  - name: "Advanced"
    duration: "2 days"
    items:
      - "Basic overview"
      - "Migrating existing sources and setting up the repository"
      - "Working as a team with branches"
      - "Hands-on implementation with VS Code"
---

![GIT](/img/Git-logo.svg_-300x126.png)

GIT runs directly on IBM i and works as source control for all IBM i sources – RPG, CL, DSPF, PF, SQL etc.

The goal:
* Traceability: who changed what, when and why?
* Every version can be restored
* Several developers work on the same sources in parallel
* The basis for automated builds and deployments

### Overview
* Installing GIT with the package manager (`yum install git`)
* Sources in the IFS or in source files (PF-SRC)
  * Which option suits which team?
  * Support in VS Code
* Basic concepts: repository, commit, branch, merge
* Migrating existing sources to the IFS
  * Importing all sources into a GIT repository
* Working with GIT in Visual Studio Code
* Branches for structured development
  * Development, test and production
  * Comparing and merging changes
* Central repositories (e.g. GitHub, GitLab, Gitea)
* Outlook: automated builds with [OBI](/news/obi) and deployments with [i-Releaser](/news/i-releaser)

There is an example project on [GitHub](https://github.com/andreas-prouza/ibm-i-build).
