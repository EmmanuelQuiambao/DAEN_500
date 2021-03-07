


#Load WHO stroke prediction data set downloaded from https://www.kaggle.com/fedesoriano/stroke-prediction-dataset
#place data set onto local directory
analytic2 <- read.csv(file="healthcare-dataset-stroke-data.csv", header=TRUE, sep=",")



plot(analytic2$age, analytic2$stroke, xlab='age',ylab='Has Had a Stroke')

model = glm(formula = stroke ~ age, family = binomial, data = analytic2)
summary(model)



mod.hit = model
pihat = mod.hit$fitted.values
pihat[1:10]
evresids = residuals(mod.hit)
resids = residuals(mod.hit, type = "response")
Presids = residuals(mod.hit, type = "pearson")
plot(pihat, Presids, xlab = "Predicted probability", ylab = "Pearson residual")


