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

dt <- aggregate(dt$balsai, by = list(metai = dt$metai,
                           partija = dt$partija), sum, na.rm = TRUE)
colnames(dt)[3] <- "balsai"

dt <- ddply(dt, .(metai), function(x){
    x$viso <- sum(x$balsai)
    x
})

dt$procentas <- dt$balsai / dt$viso * 100
data <- dt[, c("metai", "partija", "procentas")]

## group parties
parties <- read.csv("kairieji_desinieji.csv")

parties$metai <- as.numeric(parties$metai)

dt <- merge(data, parties, by = c("metai", "partija"), all.x = TRUE)
dt <- dt[dt$pozicija != "", ]
dt$pozicija <- drop.levels(dt$pozicija)
dt <- aggregate(dt$procentas, by = list(metai = dt$metai,
                                pozicija = dt$pozicija),
                 sum, na.rm = TRUE)

gr <- ggplot(aes(x = metai, y = x, group = pozicija, col = pozicija),
             data = dt) +
    scale_colour_manual(values = c("blue", "red", "black")) +
    geom_line(size = 1.5) + ylab("Procentai balsu") +
    opts(title = "Daugiamandates rinkimu apygardos rezultatai")

## pdf(file = "output/svytuokle.pdf", width = 15, height = 7)
## print(gr)
## dev.off()
