#Random Forest in AVC
install.packages('randomForest')
install.packages('caTools')
install.packages('e1071')
install.packages('caret')
install.packages('xlsx')
install.packages('rpart')
install.packages('ggplot2')
install.packages('devtools')
install.packages('esquisse')

library(readxl)
library(caret)
library(forcats)
library(e1071)
library(caTools)
library(randomForest)
library(readxl)
library(rpart)
library(ggplot2)
library(esquisse)

AvCVewer<- read_delim("C:/Users/baixi/Dropbox/github/C_A_D_S/data/external/AVC.csv", 
                           ",", escape_double = FALSE, trim_ws = TRUE)

AVC <- read_delim("C:/Users/baixi/Dropbox/github/C_A_D_S/data/external/AVC.csv", 
                  ",", escape_double = FALSE, trim_ws = TRUE)
View(AVC)



#View(Dados_Resumidos_AVC)
#pre-processamento
# pre-procecssamento Idade
AVC$id = NULL
summary(AVC$age)
linhas_absurd<- AVC[AVC$age>100,]
AVC[AVC$age<100 & !is.na(AVC$age),]


#remover registros com problemas 
AVC <- AVC[AVC$age < 100,]
AVC$age<- as.numeric(AVC$age)

#c?lculo do BMI preenchimento com a média
#pre-processamento sexo

##tratamento (casados ou n?o)
table (AVC$ever_married)
unique(AVC$ever_married)
summary(AVC$ever_married)
AVC$ever_married<- factor(AVC$ever_married, levels = c('Yes', 'No'), labels = c(0,1))

# tratamento (tipo do trabalho)
summary(AVC$work_type)
factor(AVC$work_type)
unique(AVC$work_type)
AVC$work_type<- factor(AVC$work_type, levels = c('Private', 'Self-employed','Govt_job','children','Never_worked'),labels = c(0,1,2,3,4) )

#tratamento (moradia)
summary(AVC$Residence_type)
factor(AVC$Residence_type)
unique(AVC$Residence_type)
AVC$Residence_type<- factor(AVC$Residence_type,  levels = c('Urban', 'Rural'), labels = c(0,1))
#tratamento(fumante)
summary(AVC$smoking_status)
factor(AVC$smoking_status)
unique(AVC$smoking_status)
AVC$smoking_status<- factor(AVC$smoking_status, levels = c('formerly smoked','never smoked','smokes','Unknown'), labels = c(0,1,2,3))
AVC$smoking_status<- as.integer(AVC$smoking_status)
#tratamento(sexo)
summary(AVC$gender)
table (AVC$gender)
unique(AVC$gender)
AVC$gender<- factor(AVC$gender, levels = c( "Male","Female","Other" ), labels =  c(0,1,2))
AVC$gender<- as.integer(AVC$gender)

AVC$stroke<- factor(AVC$stroke, levels = c(0,1))
AVC$stroke<- as.factor(AVC$stroke)

#escalonamento
#verificar se é necess?rio
#tratamento (AVC BMI)

AVC$bmi<-  as.factor(AVC$ bmi)
AVC$bmi<-ifelse(is.na(AVC$bmi), mean(AVC$bmi,na.rm = TRUE),AVC$bmi)
summary(AVC$bmi)
write.csv2(AVC, file = "C:/Users/baixi/Dropbox/github/C_A_D_S/data/interim/transformado.csv" ) # arquivo ap�s transforma��o
#separa??o e treinamento 
set.seed(1) #repetição dos resultados
separador<- sample.split(AVC$stroke, SplitRatio = 0.80)
treinamento<- subset(AVC, separador == TRUE)
teste<- subset(AVC, separador == FALSE)
View (teste)

set.seed(1) #repetição dos resultados
classificador<- randomForest(x = treinamento[-11], y = treinamento$stroke, ntree = 10)
previsoes<- predict(classificador, newdata = teste[-11])

matriz_confusao = table(teste$stroke,previsoes) 

confusionMatrix(matriz_confusao)
plot (matriz_confusao)



esquisser(AvCVewer)




