
library(ggplot2)

ggplot(Restaurants) + 
  geom_point(aes(x=food_review, y=service_review, color=restaurant_main_type))
       
ggplot(Restaurants) + 
  geom_point(aes(x=food_review, y=service_review, color=restaurant_main_type)) +
  geom_smooth(aes(x=food_review, y=service_review))

labeledPlot <- ggplot(Restaurants, aes(x=food_review, y=service_review, color=restaurant_main_type)) + 
  geom_point() + labs (title="Restaurant Review Scatterplot", x="Food Review", y="Service Review")
  print(labeledPlot)
  
  
themedPlot <- labeledPlot + theme(plot.title=element_text(size=20, face="bold"), 
                                  axis.text.x=element_text(size=14), 
                                  axis.text.y=element_text(size=14),
                                  axis.title.x=element_text(size=16),
                                  axis.title.y=element_text(size=16)) + 
  scale_color_discrete(name="Type of Restaurant")
  print(themedPlot)
  
labeledPlot + facet_wrap(~ restaurant_main_type, ncol=6)

