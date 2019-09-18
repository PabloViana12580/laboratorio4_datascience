##### LAB 4 DATA SCIENCE ##### 


## ANALISIS EXPLORATORIO
datos<-read.csv("train.csv")
tabla<-table(datos$diagnosis)
plot(tabla, main = "Tabla de Frecuencia en DR")
tabla
View(datos$id_code)
tabla
barplot(tabla, col = co, main = "Frecuencia de DR", xlab = "Diagnostico (0-4)", ylab = "Numero de Imagenes")
co<-c("BLACK", "RED","BLUE","GREEN","ORANGE")
qqplot(datos$id_code,datos$diagnosis)
hist(datos$diagnosis)
View(datos)


# Add a Normal Curve (Thanks to Peter Dalgaard)
x <- datos$diagnosis
h<-hist(x, breaks=10, col="red", xlab="Diagnostico",
        main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=4)
      
      

### RED NEURONAL ###
