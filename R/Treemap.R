# Import libraries
library(ggplot2) 
library(treemapify)

# Import data
data <- read.csv("https://raw.githubusercontent.com/selva86/datasets/master/proglanguages.csv")

# Basic treemap - set variables!
treeMapPlot <- ggplot(data, aes(area = value, fill = parent, label = id, group = parent))+
              geom_treemap()


# Add text
treeMapPlot +
  geom_treemap_text(colour="white", place="center", grow= TRUE)


# ZBA colors
treeMapPlot +
  scale_fill_manual(values=c("#003366",
                             "#4f81b9",
                             "#366092",
                             "#95b3d7",
                             "#b8cce4",
                             "#e7eef8"))
