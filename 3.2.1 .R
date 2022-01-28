## 3.2 advanced assignment 
## Thomas Willems

## question 1
remind_me <- function(){
  print("Exam programming: Feb 4")
  print("Birthday Stefan: May 5")
  print("Birthday Roxanne: May 10")
}
remind_me()

cheat <- function(x){
  if(x == "3.1"){
    print("random.data <- rnorm(1000)
boxplot(random.data)")
  }else if(x == "3.16"){
    print("my_matrix <- matrix(c(1:3, 4:6*2, 7:9*3), 3, 3, byr=T")
  }else if(x == "3.9"){
    print("ggstatsplot::ggbetweenstats(data = ToothGrowth, x = supp, y = len)")
  }else if (x == "3.10"){
    print("plot_ly(data=iris, x = ~Sepal.Width, y = ~Petal.Length, z = ~Petal.Width, color = ~Species)")
  }
}
cheat(3.1)









