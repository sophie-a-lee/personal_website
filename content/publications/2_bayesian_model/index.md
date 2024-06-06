---
title: "A Bayesian modelling framework to quantify multiple sources of spatial variation for disease mapping"
subtitle: ""
excerpt: "A paper developing a novel Bayesian spatial modelling framework that is able to quantify the relative contribution of multiple sources of spatial variation in disease mapping. Simulation studies show the model performed at least as well as the current standard identified in a systematic review."
date: 2022-09-21
author: "Sophie A. Lee, Theodoros Economou and Rachel Lowe"
location: "Journal of the Royal Society Interface"
draft: false
# layout options: single, single-sidebar
layout: single
categories:
- Academic
- Spatial analysis
- Statistics
links:
- icon: door-open
  icon_pack: fas
  name: Website
  url: https://royalsocietypublishing.org/doi/10.1098/rsif.2022.0440
- icon: github
  icon_pack: fab
  name: repo
  url: https://github.com/sophie-a-lee/spatial_smooth_framework/
- icon: database
  icon_pack: fas
  name: Zenodo
  url: https://zenodo.org/records/7054457
---

![](featured.jpg)

### Abstract
Spatial connectivity is an important consideration when modelling infectious disease data across a geographical region. Connectivity can arise for many reasons, including shared characteristics between regions and human or vector movement. Bayesian hierarchical models include structured random effects to account for spatial connectivity. However, conventional approaches require the spatial structure to be fully defined prior to model fitting. By applying penalized smoothing splines to coordinates, we create two-dimensional smooth surfaces describing the spatial structure of the data while making minimal assumptions about the structure. The result is a non-stationary surface which is setting specific. These surfaces can be incorporated into a hierarchical modelling framework and interpreted similarly to traditional random effects. Through simulation studies, we show that the splines can be applied to any symmetric continuous connectivity measure, including measures of human movement, and that the models can be extended to explore multiple sources of spatial structure in the data. Using Bayesian inference and simulation, the relative contribution of each spatial structure can be computed and used to generate hypotheses about the drivers of disease. These models were found to perform at least as well as existing modelling frameworks, while allowing for future extensions and multiple sources of spatial connectivity.