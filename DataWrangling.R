
ls()
setwd("C:/My works/MSU Paper Works/The_data_Incubator/Project_Proposal")

library(astsa)
library(broom)
library(forecast)

load_multiCSV <- function(path) { 
  files <- dir(path, pattern = '\\.csv', full.names = TRUE)
  tables <- lapply(files, read.csv)
  do.call(rbind, tables)
}

df1 <- load_multiCSV("data/A1Benchmark/")
print(head(df1))
i="data channel TS1"
Channel<-df1[["value"]]
par(mfrow=c(3,1))
plot(Channel, type="l",
     main= i,
     ylab= i, xlab='Time')
Acf(Channel, main="ACF of TS1 channel", lag.max =150)
Pacf(Channel, main="PACF of TS1 channel", lag.max =150)
pval <- Box.test(Channel, lag=log(length(Channel)))$p.value
sprintf("%.5f",pval)


df2 <- load_multiCSV("data/A2Benchmark/")
print(head(df2))
i="data channel TS1"
Channel<-df2[["value"]]
par(mfrow=c(3,1))
plot(Channel, type="l",
     main= i,
     ylab= i, xlab='Time')
Acf(Channel, main="ACF of TS1 channel", lag.max =150)
Pacf(Channel, main="PACF of TS1 channel", lag.max =150)
pval <- Box.test(Channel, lag=log(length(Channel)))$p.value
sprintf("%.5f",pval)

df3<-read.csv("data/A3Benchmark/A3Benchmark_all.csv")
print(head(df3))
i="data channel TS1"
Channel<-df3[["A3Benchmark.TS1"]]
par(mfrow=c(3,1))
plot(Channel, type="l",
     main= i,
     ylab= i, xlab='Time')
Acf(Channel, main="ACF of TS1 channel", lag.max =150)
Pacf(Channel, main="PACF of TS1 channel", lag.max =150)
pval <- Box.test(Channel, lag=log(length(Channel)))$p.value
sprintf("%.5f",pval)


df4<-read.csv("data/A4Benchmark/A4Benchmark_all.csv")
print(head(df4))
i="data channel TS1"
Channel<-df4[["A4Benchmark.TS1"]]
par(mfrow=c(3,1))
plot(Channel, type="l",
     main= i,
     ylab= i, xlab='Time')
Acf(Channel, main="ACF of TS1 channel", lag.max =150)
Pacf(Channel, main="PACF of TS1 channel", lag.max =150)
pval <- Box.test(Channel, lag=log(length(Channel)))$p.value
sprintf("%.5f",pval)
