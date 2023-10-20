#* plotRandomHistogram.r
#* 
#* Author: Trent Irwin
#* 
#* Purpose: 
#*        A function that will generagter
#*        a sample of normal observations 
#*        and plot the hitogram of that data
#*        
#* Inputs:
#*        num_pts = the number of observations
#*                  to randomly generate
#*        mu = the theoretical mean of the normal
#*             distribution that generates my data
#*        sigma = the theoretical standard deviation
#*        seed = an optional random number generator
#*               seed value, defaults to NULL
#*        meanColor = color of the line corresponding
#*                    to the sample mean of the data
#* Output:
#*        A histogram of the gernerated data 
#*           is drawn. 
#*        A list with the following elements:
#*           Random_obs = a vector with teh randomly 
#*                        generated data
#*           Mean_Random_obs = sample mean corresponding to the 
#*                             randomly generated data 
#*           SD_Random_obs = corresponding standard deviation     

plotRandom <- function(num_pts = 30, mu = 0, sigma = 1,
                       seed=NULL, meanColor = "royalblue") {
  set.seed(seed)
  x <- rnorm(num_pts, mean = mu, sd = sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x, lwd=5, col=meanColor)
  
  ## In R, in a function, the output from
  ## the last line is automatically returned
  list(Random_obs = x,
       Mean_Random_obs= mean_x,
       SD_Random_obs= sd(x))
} 


plotRandom()
plotRandom(seed = 19)
plotRandom(seed = 19, num_pts = 1000000)
plotRandom(seed = 19, num_pts = 1000000,
           meanColor = "forestgreen")

my_output <- plotRandom(seed = 5, num_pts = 200, mu=70,
                        sigma= 2.5, meanColor = "goldenrod")
my_output$Mean_Random_obs
