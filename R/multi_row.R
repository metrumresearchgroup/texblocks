# multirow roxy [sinew] ---- 
#' @title Merge texblocks
#' @description Create multirow/multicol to texblock object
#' @param content character, contents to display in the merged cell
#' @param nrow numeric, number of rows to span in the multirow
#' @param ncol numeric, number of columns to span in the multicol
#' @param width character, width of the new element, Default: '*'
#' @param align character, alignment of the merged column, Default: 'c'
#' @return tb 
#' @details
#' align is either l, c, r, or to have text wrapping specify a width p{5.0cm}.
#' * for the width means the content's natural width.
#' @examples 
#' multirow('aaa',2)
#' multicol('aaa',2)
#' @rdname mergecells
#' @export 
# multirow function [sinew] ----

multirow <- function(content,nrow,width = '*'){
  ret <- sprintf('\\multirow{%s}{%s}{%s}',nrow,width,content)
  as.tb(ret)
}

# strip_multirow function [sinew] ---- 
strip_multirow <- function(x){

  mr <- regmatches(x, gregexpr('\\\\multirow\\{(.*?)\\}\\{(.*?)\\}', x))
  
  if(length(mr[[1]])==0)
    return(x)
  
  ns <- lapply(mr,function(x) strsplit(gsub('[\\}|]','',x),'\\{'))
  mr <- lapply(mr,as.list)
  
  for(i in seq_along(ns)){
      for(j in seq_along(ns[[i]])){
        x <- gsub(mr[[i]][[j]],
                  ns[[i]][[j]][4],
                  x,
                  fixed = TRUE)
      }  
  }
  x
}

# find_multirow roxy [sinew] ---- 
#' @rdname find_merge
#' @export 
#' @importFrom purrr set_names map map_df
# find_multirow function [sinew] ----
find_multirow <- function(x){
  
  x_char <- as.character(x)
  
  if(!nzchar(x_char))
    return(NULL)
  
  x_list <- strsplit(x_char,split = '\\\\\\\\')[[1]]
  
  x_list <- purrr::set_names(x_list,1:length(x_list))
  
  x_list <- purrr::map(x_list,gsub,pattern = '^\\n|^\\s+',replacement = '')
  
  x_list%>%
    purrr::map_df(function(y){
      sx <- strsplit(y,split = '\\&')[[1]]
      idx <- gregexpr('\\\\multirow\\{(.*?)\\}\\{(.*?)\\}', sx)
      if(identical(idx, integer(0)))
        return(NULL)
      
      if(length(idx)==0)
        return(NULL)
      
      if(idx[[1]][1]==-1)
        return(NULL)
      
      midx <- mapply(regmatches,sx,idx,USE.NAMES = FALSE)
      sidx <- purrr::set_names(midx,seq_along(sx))
      found <- sapply(sidx,function(x)!identical(x,character(0)))
      sidy <- sidx[found]
      
      ns <- lapply(sidy,function(x) strsplit(gsub('[\\}|]','',x),'\\{')[[1]]) 
      
      purrr::map_df(names(ns),function(nm){
        this <- strsplit(sx[as.numeric(nm)],'&')[[1]]
        start_col <- grep(sidy[[nm]],this,fixed = TRUE)
        data.frame(
          col = nm,
          n = as.numeric(ns[[nm]][2]) - 1,
          new_val = ns[[nm]][4],
          old_val = sidy[[nm]],
          stringsAsFactors = FALSE
        )
      })
    },.id='row')
  
}

# multirow_attach function [sinew] ---- 
multirow_attach <- function(obj,aes){
  
  if(is.null(aes))
    return(obj)
  
  if(nrow(aes)==0)
    return(obj)
  
  for(i in 1:nrow(aes)){
    
    nr <- as.numeric(aes$row[i])
    
    obj$val[nr] <- gsub(
      pattern = aes$new_val[i],
      replacement = aes$old_val[i],
      x = obj$val[nr],
      fixed = TRUE
    )
  }
  
  obj
}