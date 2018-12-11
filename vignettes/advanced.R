## ----setup, include = FALSE----------------------------------------------

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ------------------------------------------------------------------------
library(texblocks)
library(texPreview)


## ----include=FALSE-------------------------------------------------------
tex_opts$set(returnType = 'html')
tex_opts$append(list(cleanup='tex'))

## ------------------------------------------------------------------------
k1 <- lapply(1:3,as.tb)
k2 <- lapply(4:6,as.tb)

k <- purrr::reduce(k1,`+`) / purrr::reduce(k2,`+`)

title <- c('param',sprintf('col%s',1:5))%>%
  purrr::map(as.tb)%>%
  purrr::reduce(`+`)


## ----adv1----------------------------------------------------------------
title <- as.tb('param') + multicol('vals',3,'c|')

tab <- title / (multirow('$\\beta$',2) + k )

tab%>%
  hline(c(0,3))%>%
  cline(data.frame(line=1,i=2,j=4))%>%
  tabular(align = '|c|ccc|')%>%
  texPreview::tex_preview()


## ----adv2----------------------------------------------------------------
title <- as.tb('param') + multicol('vals',3,'c')
tab <- purrr::map2(1:2,c(1,3),function(x,y) multirow(sprintf('$\\beta_%s$',x),y) + k )

(title / purrr::reduce(tab,`/`))%>%
  tabular()%>%
  texPreview::tex_preview()

