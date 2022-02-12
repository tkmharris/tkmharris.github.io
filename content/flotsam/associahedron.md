---
title: "Associahedron"
date: 2022-02-12
showDate: true
draft: false
---

Jean-Louis Loday's realisation of the (5-)[associahedron](https://en.wikipedia.org/wiki/Associahedron):

![](/flotsam/img/associahedron.gif)

The vertices are generated from planar binary trees using the algorithm described in Loday's paper[^1] (Loday gives vertices in 4-space but they sit in a 3-dimsional hyperplane which I've projected onto ordinary 3-space). The surface was created and written to STL with the Trimesh Python library. 
[Code](https://gist.github.com/tkmharris/cca3976c30a8ddb27297d8eaa731ae87).

[^1]: Loday, J-L. Realization of the Stasheff polytope. *Archiv der Mathematik* **83**, 267–278 (2004). 
[doi](https://doi.org/10.1007/s00013-004-1026-y)