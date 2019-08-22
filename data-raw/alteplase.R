# Time to treatment with intravenous alteplase and outcome
# in stroke: an updated pooled analysis of ECASS, ATLANTIS,
# NINDS, and EPITHET trials
# Kennedy R Lees, Erich Bluhmki, Rüdiger von Kummer, Thomas G Brott, Danilo Toni, James C Grotta, Gregory W Albers, Markku Kaste,
# John R Marler, Scott A Hamilton, Barbara C Tilley, Stephen M Davis, Geoff rey A Donnan, Werner Hacke, for the ECASS, ATLANTIS, NINDS, and
# EPITHET rt-PA Study Group Investigators*



library(tidyverse)

data.frame(
  time=c("0-90", "0-90", "91-180", "91-180", "181-270", "181-270", "271-360", "271-360"),
  treat=c("Alteplase","Placebo","Alteplase","Placebo","Alteplase","Placebo","Alteplase","Placebo"),
  r0=c(36,16,52,47,190,130,103,78),
  r1=c(31,30,74,45,171,176,113,115),
  r2=c(13,17,23,30,106,108,67,74),
  r3=c(21,18,40,51,83,114,66,69),
  r4=c(22,29,35,61,97,134,86,105),
  r5=c(7,11,25,34,74,65,57,47),
  r6=c(31,30,54,47,88,84,84,55)
) %>%
  gather("mRS","count",starts_with("r")) %>%
  apply(.,1,function(df){
    data.frame(time=rep(df[1],df[4]),
               treat=rep(df[2],df[4]),
               mRS=rep(df[3],df[4]))
  }) %>% do.call("rbind",.) %>%
  mutate(mRS=factor(mRS,
                    levels=paste("r",6:0,sep=""),
                    labels=6:0))  -> alteplase

usethis::use_data(alteplase, overwrite = TRUE)

