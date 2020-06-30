####################################################
###                   Intro                      ###
# J.B. Herrmann (Dh Lab Basel)                    #
####################################################
#The following code pertains to a quantitative case study that zooms in on EAK as a specialized sub sample of KOLIMO (a selection of 35 
#opening sections of German narrative prose between 1850 and 1930). 

#In order to facilitate non-linear reading in the shape of a corpus-stylistic study of vividness, these fragments were coded for 
#metaphorical language use and part of speech. The script runs chi-square tests, Cramer's V, and renders standardized residuals to explore 
#the cells that contribute to the general association between variables. I thank my former student assistant Markus Paluch for his support
#in setting up this research!

if (!require("lsr")) install.packages("lsr") # calls library "lsr" and first installs if absent
options(skipen=999)
setwd("~/GitHub/EAK") # set to own wd

####################################################
### Chi-Quadrat Test: MRW und Non-MRW über Texte ###
####################################################
# This test assesses whether "relation to metaphor" (MRW/Non_MRW) is statistically associated with "text" (ID1 - ID35)


d <- read_delim("EAK_Merkmalsmatrix.csv", ";", escape_double = FALSE, trim_ws = TRUE)
View(d) #35 entries, 47 total columns
str(d)


sink("chisq.test_MRW_NONMRW_fuer_absolute_Haeufigkeiten.txt") # writes results as .txt file to disk

cat("\n\n ## MRW x nonMRW ## \n") # heading within that .txt file

a <- matrix(c(d$MRW, d$nonMRW),nrow=35)
chisq.test(a)

cat("\n\n ## Cramer's V ## \n") #effect size
cramersV(a)

cat("\n\n ## Expected ## \n") # expected frequencies
data.frame(chisq.test(a)$expected)

cat("\n\n ## Residuen ## \n") # standardized residuals 
data.frame(chisq.test(a)$residuals)

exp <- data.frame(chisq.test(a)$expected)
res <- data.frame(chisq.test(a)$residuals)

er <- data.frame(exp,res)
colnames(er) <- c("Erwartungswert_MRW","Erwartungswert_nonMRW","Standardisierte Residuen_MRW","Standardisierte Residuen_nonMRW")
write.table(er, "std.residuen_und_Erwartungswert_fuer_MRW_und_nonMRW.csv",sep="\t") # standard. Res. for MRW/NonMRW per text
sink()

###################################################
###  Chi-Quadrat Test: MRW/Non-MRW und Wortart  ###
###################################################
# This test assesses whether "relation to metaphor" (MRW/Non_MRW) is statistically associated with "word class" (ADJ, ADV, AP, P, N, V, ART, KO)

h <- read.table("MRW_und_nonMRW_nach_POS_absolute_Haeufigkeiten_als_dataframe.csv", header=T, sep="\t")

sink("Chisq_fuer_MRW_und_nonMRW_nach_POS.txt") # gibt den Chi-Quadrat-Test est aus.

h2 <- subset(h, Var1=="MRW")
h3 <- subset(h, Var1=="nonMRW")


cat("\n MRW x nonMRW nach Wortarten: \n")
a <- matrix(c(h2$Freq,h3$Freq), nrow=9)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
exp <- data.frame(chisq.test(a)$expected)
res <- data.frame(chisq.test(a)$residuals)
sink()

er <- data.frame(exp,res)
colnames(er) <- c("Erwartungswert_MRW","Erwartungswert_nonMRW","Standardisierte Residuen_MRW","Standardisierte Residuen_nonMRW")
write.table(er, "std.residuen_und_Erwartungswert_fuer_MRW_und_nonMRW_nach_POS.csv",sep="\t") # gibt u.a. die die standardisierten Residuen für MRW/NonMRW pro Wortart aus

####################################################################
### Chi-Quadrat Test: MRW/Non-MRW und Text innerhalb von Wortart ###
####################################################################
# This test assesses whether relation to metaphor is statistically associated with text within each of the main 
# word classes (nouns, verbs, adjectives, adpositions, and adverbs)

h <- read.table("MRW_nach_POS_absolute_Haeufigkeiten.csv", header=T, sep="\t")

sink("Chisq_fuer_MRW_x_nonMRW_nach_Wortarten_pro_Text.txt") # gibt die chi-quadrate für jede Wortart aus


cat("\n ADJ: \n") # Adjektive
h3 <- subset(h, Var3=="ADJ")
a <- matrix(h3$Freq, nrow=35)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
cat("\n\n ## Expected ## \n")
data.frame(chisq.test(a)$expected)
exp <- data.frame(chisq.test(a)$expected)
cat("\n\n ## Residuen ## \n")
data.frame(chisq.test(a)$residuals)
res <- data.frame(chisq.test(a)$residuals)

p <- data.frame(chisq.test(a)$p.value)
Cramers_ADJ <- cramersV(a)

ADJ <- chisq.test(a)$statistic


cat("\n ADV: \n") # Adverbien
h3 <- subset(h, Var3=="ADV")
a <- matrix(h3$Freq, nrow=35)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
cat("\n\n ## Expected ## \n")
data.frame(chisq.test(a)$expected)
exp <- append(exp, data.frame(chisq.test(a)$expected))
cat("\n\n ## Residuen ## \n")
data.frame(chisq.test(a)$residuals)
res <- append(res, data.frame(chisq.test(a)$residuals))

p <- append(p, data.frame(chisq.test(a)$p.value))
Cramers_ADV <- cramersV(a)

ADV <- chisq.test(a)$statistic


cat("\n AP: \n") # Adpositionen
h3 <- subset(h, Var3=="AP")
a <- matrix(h3$Freq, nrow=35)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
cat("\n\n ## Expected ## \n")
data.frame(chisq.test(a)$expected)
exp <- append(exp, data.frame(chisq.test(a)$expected))
cat("\n\n ## Residuen ## \n")
data.frame(chisq.test(a)$residuals)
res <- append(res, data.frame(chisq.test(a)$residuals))

p <- append(p, data.frame(chisq.test(a)$p.value))
Cramers_AP <- cramersV(a)

AP <- chisq.test(a)$statistic


cat("\n P: \n") # Pronomina
h3 <- subset(h, Var3=="P")
a <- matrix(h3$Freq, nrow=35)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
cat("\n\n ## Expected ## \n")
data.frame(chisq.test(a)$expected)
exp <- append(exp, data.frame(chisq.test(a)$expected))
cat("\n\n ## Residuen ## \n")
data.frame(chisq.test(a)$residuals)
res <- append(res, data.frame(chisq.test(a)$residuals))

p <- append(p, data.frame(chisq.test(a)$p.value))
Cramers_P <- cramersV(a)

P <- chisq.test(a)$statistic


cat("\n N: \n") # Nomen
h3 <- subset(h, Var3=="N")
a <- matrix(h3$Freq, nrow=35)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
cat("\n\n ## Expected ## \n")
data.frame(chisq.test(a)$expected)
exp <- append(exp, data.frame(chisq.test(a)$expected))
cat("\n\n ## Residuen ## \n")
data.frame(chisq.test(a)$residuals)
res <- append(res, data.frame(chisq.test(a)$residuals))

p <- append(p, data.frame(chisq.test(a)$p.value))
Cramers_N <- cramersV(a)

N <- chisq.test(a)$statistic


cat("\n V: \n") # Verben
h3 <- subset(h, Var3=="V")
a <- matrix(h3$Freq, nrow=35)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
cat("\n\n ## Expected ## \n")
data.frame(chisq.test(a)$expected)
exp <- append(exp, data.frame(chisq.test(a)$expected))
cat("\n\n ## Residuen ## \n")
data.frame(chisq.test(a)$residuals)
res <- append(res, data.frame(chisq.test(a)$residuals))

p <- append(p, data.frame(chisq.test(a)$p.value))
Cramers_V <- cramersV(a)

V <- chisq.test(a)$statistic


cat("\n ART: \n") # Artikel
h3 <- subset(h, Var3=="ART")
a <- matrix(h3$Freq, nrow=35)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
cat("\n\n ## Expected ## \n")
data.frame(chisq.test(a)$expected)
exp <- append(exp, data.frame(chisq.test(a)$expected))
cat("\n\n ## Residuen ## \n")
data.frame(chisq.test(a)$residuals)
res <- append(res, data.frame(chisq.test(a)$residuals))

p <- append(p, data.frame(chisq.test(a)$p.value))
Cramers_ART <- cramersV(a)

ART <- chisq.test(a)$statistic


cat("\n KO: \n") # Konjunktionen
h3 <- subset(h, Var3=="KO")
a <- matrix(h3$Freq, nrow=35)
chisq.test(a)
cat("\n Cramer's V: \n")
cramersV(a)
cat("\n\n ## Expected ## \n")
data.frame(chisq.test(a)$expected)
exp <- append(exp, data.frame(chisq.test(a)$expected))
cat("\n\n ## Residuen ## \n")
data.frame(chisq.test(a)$residuals)
res <- append(res, data.frame(chisq.test(a)$residuals))

p <- append(p, data.frame(chisq.test(a)$p.value))
Cramers_KO <- cramersV(a)

KO <- chisq.test(a)$statistic


sink()

X <- rbind(ADJ, ADV, AP, P, N, V, ART, KO)

cramer <- rbind(Cramers_ADJ,Cramers_ADV,Cramers_AP,Cramers_P,Cramers_N,Cramers_V,Cramers_ART,Cramers_KO)


stats <- cbind(X, p, cramer)
colnames(stats) <- c("Chi-Quadrat", "p-Wert", "Cramer's V")
write.table(stats, "Stats_fuer_POS_pro_MRW_x_nonMRW.csv.csv",sep="\t") # Tabelle mit Chi-Quadrat, p-Werten sowie Effektgrösse (Cramer's V) pro Wortart



########################################################################################################

