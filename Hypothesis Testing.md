### Step to do:

0. Assign variables:
   - μ0 or p0
   - x̄ or P̅
   - n
   - sd (or sigma σ)
   - α (default is 0.05)
1. State the hypothesis
2. Select Level of significance (alpha α)
3. Select Test statistic (This formula for one population)
   - `z/t <- (xbar - u0) / (sd/sqrt(n))`
   - `z <- (pbar-p0) / sqrt((p0\*(1-p0))/n)`
4. Finding P-value approach or Critical Value approach
   - P-value for Z: `pvalue <- pnorm(z)`
   - Critical Value for Z: `zalpha <- qnorm(alpha)`
   - P-value for T: `pvalue <- pt(q, df,lower.tail = TRUE)`
   - talpha for T: `talpha <- qt(p, df, lower.tail = TRUE)`
5. Compare P-value with alpha or z/t with zalpha/talpha
6. Conclusion

### Example 1 (Ref: Chapter 9 Page 356)

The Federal Trade Commission (FTC) periodically conducts statistical studies designed to test the claims that manufacturers make about their products. For example, the label on a large can of Hilltop Coffee states that the can contains 3 pounds of coffee. Thus, the FTC interprets the label information on a large can of coffee as a claim by Hilltop that the population mean filling weight is at least 3 pounds per can. The director of the FTC’s testing program willing to risk a 1% chance of making such an error. Suppose a sample of 36 cans of coffee is selected and the population standard deviation can be assumed known with a value of σ = 0.18. Is x̄ = 2.92 pounds small enough to cause us to reject H0 ?


### Step 0: Assign variables

```
n <- anime %>% count()
sd <- sd(anime$members)
xbar <- mean(anime$members)
u0 <-  100000
  ```

### Step 1: State the hypothesis

```
Ho: μ > 100000  
Ha: μ < 100000
```

### Step 2: Level of significance

```
alpha <- 0.05
```

### Step 3: Test statistic

```
z <- (xbar - u0) / (sd/sqrt(n))
```
Result
```
-160.0684
```

### Step 4: Finding P-value approach or Critical Value approach
#### P-value approach

```
pvalue <- pnorm(z)
```
Result
```
0.003830381
```
#### Critical Value approach
```
zalpha <- qnorm(alpha)
```
Result
```
-1.644854
```

### Step 5: Compare

```
# Using p-value approach
if(pvalue<=alpha){
  print("Reject H0")
}else{
  print("Accept H0")
}

# Using critical value
if(z<=zalpha){
  print("Reject H0")
}else{
  print("Accept H0")
}
```
Result
```
P-value approach : "Reject H0"
Critical value approach : "Reject H0"
```


### Step 6: Conclusion

//Answer
