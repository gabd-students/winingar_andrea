# Andrea Winingar
# Homework 2 Part 3 Matrices
# 3.1 What's A Matrix
# Construct a matrix with 4 rows containing the numbers 11 to 30, filled row-wise.
first_matrix <- matrix(11:30, byrow = TRUE, nrow = 4)
# Construct a matrix with 5 cols containing the numbers 11 to 30, filled column-wise.
second_matrix <- matrix(11:30, byrow = FALSE, ncol =5 )
#
# 3.2 Construct a Matrix
# create chick_weights vector
chick_weights <- chickwts$weight[c(1:20, 23:32)]
# Create a column-wise matrix called `three_diets` with three columns and ten rows from the `chick_weights` vector.
three_diets <- matrix(chick_weights, byrow = FALSE, nrow = 10, ncol = 3)
# Display the values contained in the `three_diets` matrix.
three_diets
#
# 3.3 Name the Columns and Rows
# Use `colnames()` to name the columns `horsebean`, `linseed`, and `soybean`.
col_names_vector <- c("horsebean", "linseed", "soybean")
colnames(three_diets) <- col_names_vector
# Use `rownames()` to name the rows with the pattern `Replicate #` Use the `paste()` function for efficiency.
row_names_vector <- paste("Replicate", 1:10)
rownames(three_diets) <- row_names_vector
#
# 3.4 Calculations on matrices
# calculate average chick weight by columns
colMeans(three_diets)
# Store the the average chick weight for each diet type in `mean_weights`
mean_weights <- colMeans(three_diets)
# Print the values in mean_weights
mean_weights
# Calculate the mean weight of all 30 chicks in the matrix.
mean(three_diets)
#
# 3.5 Add a Column with another diet type
# Use `chickwts$weight[60:69]` to access the first 10 chicks raised on casein diet.
casein <- chickwts$weight[60:69]
# Use `cbind()` to add this new column of data to your `weights` matrix. Save as `four_diets`
four_diets <- cbind(three_diets, casein)
# Calculate the mean weights of chicks for each diet type.
colMeans(four_diets)
#
# 3.6 Selecting Matrix Elements
# Select the entire linseed column by column number.
four_diets[,2]
# Select the entire soybean column by name.
four_diets[,"soybean"]
# Select the entire ninth row by row number.
four_diets[9,]
# Select the entire third row by row name.
four_diets["Replicate 3",]
# Select the fifth replicate from the horsebean column with any method.
four_diets[5,1]
#
# 3.7 A little Arithmetic with Matrices
# Convert grams to ounces
four_diets/28.35
# Apply the log() function.
log(four_diets)
# Apply the dim() function.
dim(four_diets)
# Apply the length() function.
length(four_diets)
#