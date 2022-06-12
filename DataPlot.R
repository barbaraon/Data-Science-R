install.packages("Rcmdr")
install.packages("likert")
install.packages("ggplot2")
install.packages("psych") #avaliar a dimensinalidade dos instrumentos
library(Rcmdr)
library(likert)
library(ggplot2)
library(psych)


dados_pesquisa <- readXL("Inquérito - DH - análise dos dados.xlsx", rownames = FALSE, header = TRUE, na = "", sheet = "Cartilha", stringsAsFactors = TRUE)
names(dados_pesquisa)
cartilhalikert <- dados_pesquisa[, c(0:41)]
cartilhalikert <- lapply(cartilhalikert, function(x) { factor(x, levels = c("1", "2", "3", "4", "5"), labels = c("Discordo Totalmente", "Discordo", "Não concordo nem discordo", "Concordo", "Concordo Totalmente")) })
library(likert)
lik <- likert(as.data.frame(cartilhalikert))
#plot(lik, wrap = 60, text.size = 8) + theme(axis.title.y = element_text(size = 10))
#plot( lik, type = "heat", wrap = 60, text.size = 3) + theme( axis.title.y = element_text( size ="10"))

#graph by culture

#names(dados_pesquisa)
#cultura <- dados_pesquisa[,c(0:4)]
#cultura <- lapply(cultura, function(x){ factor(x, levels = c( "1", "2", "3", "4", "5"), labels = c("Discordo Totalmente", "Discordo", "Não concordo nem discordo", "Concordo", "Concordo Totalmente"))})
#library(likert)
#lik1 <- likert(as.data.frame(cultura))


#graph by recognition

#names(dados_pesquisa)
#rec<- dados_pesquisa[,c(5:7)]
#rec <- lapply(rec, function(x){ factor(x, levels = c( "1", "2", "3", "4", "5"), labels = c("Discordo Totalmente", "Discordo", "Não concordo nem discordo", "Concordo", "Concordo Totalmente"))})
#library(likert)
#lik1 <- likert(as.data.frame(rec))



#graph by knowledge

names(dados_pesquisa)
conhecimento<- dados_pesquisa[,c(8:17)]
conhecimento <- lapply(conhecimento, function(x){ factor(x, levels = c( "1", "2", "3", "4", "5"), labels = c("Discordo Totalmente", "Discordo", "Não concordo nem discordo", "Concordo", "Concordo Totalmente"))})
library(likert)

lik11 <- likert(as.data.frame(conhecimento,), grouping = dados_pesquisa$Nacionalidade)




#graph by practice

#names(dados_pesquisa)
#pratica<- dados_pesquisa[,c(18:25)]
#pratica <- lapply(pratica, function(x){ factor(x, levels = c( "1", "2", "3", "4", "5"), labels = c("Discordo Totalmente", "Discordo", "Não concordo nem discordo", "Concordo", "Concordo Totalmente"))})
#library(likert)
#lik1 <- likert(as.data.frame(pratica))


#graph by manual

#names(dados_pesquisa)
#manual<- dados_pesquisa[,c(26:35)]
#manual <- lapply(manual, function(x){ factor(x, levels = c( "1", "2", "3", "4", "5"), labels = c("Discordo Totalmente", "Discordo", "Não concordo nem discordo", "Concordo", "Concordo Totalmente"))})
#library(likert)
#lik1 <- likert(as.data.frame(manual))

#graph by curruculum

#names(dados_pesquisa)
#curriculum<- dados_pesquisa[,c(36:38)]
#curriculum <- lapply(curriculum, function(x){ factor(x, levels = c( "1", "2", "3", "4", "5"), labels = c("Discordo Totalmente", "Discordo", "Não concordo nem discordo", "Concordo", "Concordo Totalmente"))})
#library(likert)
#lik1 <- likert(as.data.frame(curriculum))

#graph by codigo

#names(dados_pesquisa)
#codigo<- dados_pesquisa[,c(39:42)]
#codigo <- lapply(codigo, function(x){ factor(x, levels = c( "1", "2", "3", "4", "5"), labels = c("Discordo Totalmente", "Discordo", "Não concordo nem discordo", "Concordo", "Concordo Totalmente"))})
#library(likert)
#lik1 <- likert(as.data.frame(codigo))


# Compara as opiniões considerando o local de trabalho

