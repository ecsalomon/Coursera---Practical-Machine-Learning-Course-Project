
CFStestPredictions <- predict(modFitCFS$finalModel,
                              newdata = testing[, c(8:11, 37:49, 60:68, 84:86,
                                                    102, 113:124, 140,
                                                    151:160)])

pml_write_files = function(x){
  n = length(x)
  for(i in 1:n){
    filename = paste0("problem_id_",i,".txt")
    write.table(x[i],file=filename,quote=FALSE,row.names=FALSE,col.names=FALSE)
  }
}

pml_write_files(CFStestPredictions)