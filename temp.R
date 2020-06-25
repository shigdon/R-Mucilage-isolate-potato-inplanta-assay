#### 2.1.4. - LSMeans

```{r}
summary(lsmeans(lm_set_2.1_DS, trt.vs.ctrl ~isolate, ref=31)$contrasts, infer = c(T,T))
```

#### 2.1.4. - CLD - (Pairwise by isolate)

```{r}
cld(lsmeans(lm_set_2.1_DS, ~isolate), alpha=0.1)
plot(cld(lsmeans(lm_set_2.1_DS, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")
```

#### 2.1.4. - CLD - Mean Estimate Differences to Control

Compact Letter Display of estimates for Dry Shoot Mean weight (mg) differences between plants that were inoculated with a mucilage isolates and the non-inoculated control.

```{r}
plot(cld(lsmeans(lm_set_2.1_DS, trt.vs.ctrl~isolate,ref=31)$contrasts, alpha=0.1), main="Mean Dry Shoot Weight Differences of Inoculated Plants vs. Control", xlab = "Difference of Mean Estimates (mg)", ylab = "Contrasts")
```

**Experimental Design Table**
  
  | Structure | Factor | Type | # levels |
  |-----------|--------|------|----------|
  | Treatment | Isolate | Qualitative | 33 |
  | Design    | MS Media Slants | Experimental Unit | 99 |
  | Response  | Plant Tissue Weight | Observational Unit | 396 |
  |Response | Dry Root Weight (DR) | Variable | 99 | 
  | Response | Dry Shoot Weight (DS) | Variable | 99 |
  | Response | Wet Root Weight (WR) | Variable | 99 | 
  | Response | Wet Shoot Weight (WS) | Variable | 99 |

# Set 1 NAs Removed
grid.newpage()
grid.draw(rbind(ggplotGrob(set_1_WS_bars), ggplotGrob(set_1_WR_bars), size = "last"))

## Set 1 tukey - WS
plot(cld(lsmeans(lm_set_1_WS, ~isolate), alpha=0.1), main="Set 1: All pairwise comparisons for Mean Wet Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

## Set 1 tukey - WR
plot(cld(lsmeans(lm_set_1_WR, ~isolate), alpha=0.1), main="Set 1: All pairwise comparisons for Mean Wet Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.1
grid.newpage()
grid.draw(rbind(ggplotGrob(set_2.1_WS_bars), ggplotGrob(set_2.1_WR_bars), size = "last"))

## Set 2.1 tukey - WS
plot(cld(lsmeans(lm_set_2.1_WS, ~isolate), alpha=0.1), main="Set 2.1: All pairwise comparisons for Mean Wet Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

## Set 2.1 tukey - WR
plot(cld(lsmeans(lm_set_2.1_WR, ~isolate), alpha=0.1), main="Set 2.1: All pairwise comparisons for Mean Wet Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.2
grid.newpage()
grid.draw(rbind(ggplotGrob(set_2.2_WS_bars), ggplotGrob(set_2.2_WR_bars), size = "last"))

## Set 2.2 tukey - WS
plot(cld(lsmeans(lm_set_2.2_WS, ~isolate), alpha=0.1), main="Set 2.2: All pairwise comparisons for Mean Wet Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

## Set 2.2 tukey - WR
plot(cld(lsmeans(lm_set_2.2_WR, ~isolate), alpha=0.1), main="Set 2.2: All pairwise comparisons for Mean Wet Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.3
grid.newpage()
grid.draw(rbind(ggplotGrob(set_2.3_WS_bars), ggplotGrob(set_2.3_WR_bars), size = "last"))

# Set 2.4
grid.newpage()
grid.draw(rbind(ggplotGrob(set_2.4_WS_bars), ggplotGrob(set_2.4_WR_bars), size = "last"))

## Set 2.4 tukey - WS
plot(cld(lsmeans(lm_set_2.4_WS, ~isolate), alpha=0.1), main="Set 2.4: All pairwise comparisons for Mean Wet Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

## Set 2.4 tukey - WR
plot(cld(lsmeans(lm_set_2.4_WR, ~isolate), alpha=0.1), main="Set 2.4: All pairwise comparisons for Mean Wet Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 3.1 
grid.newpage()
grid.draw(rbind(ggplotGrob(set_3.1_WS_bars), ggplotGrob(set_3.1_WR_bars), size = "last"))

## Set 3.1 tukey - WS
plot(cld(lsmeans(lm_set_3.1_WS, ~isolate), alpha=0.1), main="Set 3.1: All pairwise comparisons for Mean Wet Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

## Set 3.1 tukey - WR
plot(cld(lsmeans(lm_set_3.1_WR, ~isolate), alpha=0.1), main="Set 3.1: All pairwise comparisons for Mean Wet Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")


# Set 3.2
grid.newpage()
grid.draw(rbind(ggplotGrob(set_3.2_WS_bars), ggplotGrob(set_3.2_WR_bars), size = "last"))

# Set 3.3
grid.newpage()
grid.draw(rbind(ggplotGrob(set_3.3_WS_bars), ggplotGrob(set_3.3_WR_bars), size = "last"))

# Set 3.4
grid.newpage()
grid.draw(rbind(ggplotGrob(set_3.4_WS_bars), ggplotGrob(set_3.4_WR_bars), size = "last"))

## Set 3.4 tukey - WS
plot(cld(lsmeans(lm_set_3.4_WS, ~isolate), alpha=0.1), main="Set 3.4: All pairwise comparisons for Mean Wet Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

## Set 3.4 tukey - WR
plot(cld(lsmeans(lm_set_3.4_WR, ~isolate), alpha=0.1), main="Set 3.4: All pairwise comparisons for Mean Wet Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# 3.5
grid.newpage()
grid.draw(rbind(ggplotGrob(set_3.5_WS_bars), ggplotGrob(set_3.5_WR_bars), size = "last"))

# 4.1
grid.newpage()
grid.draw(rbind(ggplotGrob(set_4.1_WS_bars), ggplotGrob(set_4.1_WR_bars), size = "last"))

## Set 4.1 tukey - WS
plot(cld(lsmeans(lm_set_4.1_WS, ~isolate), alpha=0.1), main="Set 4.1: All pairwise comparisons for Mean Wet Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

## Set 4.1 tukey - WR
plot(cld(lsmeans(lm_set_4.1_WR, ~isolate), alpha=0.1), main="Set 4.1: All pairwise comparisons for Mean Wet Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# 4.2
grid.newpage()
grid.draw(rbind(ggplotGrob(set_4.2_WS_bars), ggplotGrob(set_4.2_WR_bars), size = "last"))

## Set 4.2 tukey - WS
plot(cld(lsmeans(lm_set_4.2_WS, ~isolate), alpha=0.1), main="Set 4.2: All pairwise comparisons for Mean Wet Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")


## Set 4.2 tukey - WR

plot(cld(lsmeans(lm_set_4.2_WR, ~isolate), alpha=0.1), main="Set 4.2: All pairwise comparisons for Mean Wet Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# 4.3
grid.newpage()
grid.draw(rbind(ggplotGrob(set_4.3_WS_bars), ggplotGrob(set_4.3_WR_bars), size = "last"))

# DRY WEIGHTS

# Set 1
grid.newpage()
grid.draw(rbind(ggplotGrob(set_1_DS_bars), ggplotGrob(set_1_DR_bars), size = "last"))

# Set 1 tukey - DS
plot(cld(lsmeans(lm_set_1_DS, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 1 tukey - DR
plot(cld(lsmeans(lm_set_1_DR, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.1
grid.newpage()
grid.draw(rbind(ggplotGrob(set_2.1_DS_bars), ggplotGrob(set_2.1_DR_bars), size = "last"))

# Set 2.1 tukey -DS
plot(cld(lsmeans(lm_set_2.1_DS, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.1 tukey - DR
plot(cld(lsmeans(lm_set_2.1_DR, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.2
grid.newpage()
grid.draw(rbind(ggplotGrob(set_2.2_DS_bars), ggplotGrob(set_2.2_DR_bars), size = "last"))

# Set 2.2 tukey - DS
plot(cld(lsmeans(lm_set_2.2_DS, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.2 tukey - DR
plot(cld(lsmeans(lm_set_2.2_DR, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.3

# Set 2.3 tukey - DS
plot(cld(lsmeans(lm_set_2.3_DS, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.3 tukey - DR
plot(cld(lsmeans(lm_set_2.3_DR, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.4


# Set 2.4 tukey - DS
plot(cld(lsmeans(lm_set_2.4_DS, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Shoot Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")

# Set 2.4 tukey - DR
plot(cld(lsmeans(lm_set_2.4_DR, ~isolate), alpha=0.1), main="All pairwise comparisons for Mean Dry Root Weight", xlab = "Mean Weight (mg)", ylab = "Isolate ID")










