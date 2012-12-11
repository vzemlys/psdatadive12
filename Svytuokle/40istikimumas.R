library(gdata)
library(plyr)
library(ggplot2)

dgm2012 <- read.csv("daugiamandate2012_daugiamandatesrezultataiapygardojeitem.csv", as.is = TRUE)

dgm2008 <- read.csv("daugiamandate2008_daugiamandatesrezultataiapygardojeitem.csv", as.is = TRUE)

dgm2004 <- read.csv("daugiamandate2004_daugiamandatesrezultataiapygardojeitem.csv", as.is = TRUE)

dgm2000 <- read.csv("daugiamandate2000_daugiamandatesrezultataiapygardojeitem.csv", as.is = TRUE)

dgm1996 <- read.csv("daugiamandate1996_daugiamandatesrezultataiapygardojeitem.csv", as.is = TRUE)

dgm1996$metai <- 1996
dgm2000$metai <- 2000
dgm2004$metai <- 2004
dgm2008$metai <- 2008
dgm2012$metai <- 2012

## correct data
dgm2004$nuo_galiojanciu_biuleteniu <- gsub("%", "",
                                           dgm2004$nuo_galiojanciu_biuleteniu)
dgm2004$nuo_galiojanciu_biuleteniu <-
    as.numeric(dgm2004$nuo_galiojanciu_biuleteniu)
dgm2004$nuo_galiojanciu_biuleteniu <- dgm2004$nuo_galiojanciu_biuleteniu/100

dgm2008$nuo_galiojanciu_biuleteniu <- gsub("%", "",
                                           dgm2008$nuo_galiojanciu_biuleteniu)
dgm2008$nuo_galiojanciu_biuleteniu <- gsub("\\,", "\\.",
                                           dgm2008$nuo_galiojanciu_biuleteniu)
dgm2008$nuo_galiojanciu_biuleteniu <-
    as.numeric(dgm2008$nuo_galiojanciu_biuleteniu)
dgm2008$nuo_galiojanciu_biuleteniu <- dgm2008$nuo_galiojanciu_biuleteniu/100

dgm2012$nuo_galiojanciu_biuleteniu <- gsub("%", "",
                                           dgm2012$nuo_galiojanciu_biuleteniu)
dgm2012$nuo_galiojanciu_biuleteniu <- gsub("\\,", "\\.",
                                           dgm2012$nuo_galiojanciu_biuleteniu)
dgm2012$nuo_galiojanciu_biuleteniu <-
    as.numeric(dgm2012$nuo_galiojanciu_biuleteniu)
dgm2012$nuo_galiojanciu_biuleteniu <- dgm2012$nuo_galiojanciu_biuleteniu/100

dt <- rbind(dgm1996, dgm2000, dgm2004, dgm2008, dgm2012)
dt$pastu <- as.numeric(dt$pastu)
dt$pastu[is.na(dt$pastu)] <- 0
dt$balsai <- dt$pastu + dt$apylinkese
dt <- dt[, c("metai", "apygarda", "partija", "balsai",
             "nuo_galiojanciu_biuleteniu")]

################################################################################

## istikimumas
dt <- unique(dt)
apy.full <- dt$apygarda
apy <- gsub("[^0-9]", "", apy.full)
dt$apygarda <- apy

dt <- ddply(dt, .(metai, apygarda), function(x){
    x$viso <- sum(x$balsai)
    x
})

dt$procentai <- dt$balsai / dt$viso * 100

grouping <- read.csv("partijos_blokais.csv", encoding = "utf-8",
                     as.is = TRUE)
colnames(grouping) <- c("partija", "blokas", "metai")
grouping$metai <- as.numeric(grouping$metai)

dt <- dt[, c("metai", "apygarda", "partija", "procentai")]

dt2 <- merge(dt, grouping, all.x = TRUE)

dt2 <- ddply(dt2, .(metai, apygarda), function(x){
    ord <- order(x$procentai, decreasing = TRUE)
    x <- x[ord, ]
    x[1, ]
})

## skaiciuoti pasikeitimus
res <- ddply(dt2, .(apygarda), function(x){
    k <- c()
    for (i in 2:nrow(x)){
        k[i-1] <- x[i, "blokas"] != x[i-1, "blokas"]
    }
    sum(k)
})
colnames(res) <- c("apygarda", "pasikeitimai")

temp <- data.frame(cbind(apy, apy.full))
colnames(temp) <- c("trumpas_pavadinimas", "ilgas_pavadinimas")
temp <- unique(temp)
temp <- ddply(temp, .(trumpas_pavadinimas), function(x){
    x[1, ]
})

res <- merge(res, temp, by.x = "apygarda", by.y = "trumpas_pavadinimas", all.x = TRUE)

res <- res[order(res$pasikeitimai), ]

## write.csv(res, file = "rinkeju_istikimumas.csv", row.names = FALSE)
