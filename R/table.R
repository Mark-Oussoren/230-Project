createTable <- function(data, row_names) {
  # data: matrix to return string for pasting in latex
  # row_names: array for row names, same dimension as data rows
  # return: table_str - paste into latex table 
  table_str <- ''
  
  row_dim <- dim(data)[1]
  col_dim <- dim(data)[2]
  
  # column names are pasted in a separate bit in the latex table
  include_row_names <- (length(row_names) == row_dim)

  for (i in 1:row_dim) {
    
    # paste the row name at the beginning of the string
    if (include_row_names & i != 1) {
      table_str <- paste(table_str, row_names[i], sep = " \\ ")
    } else {
      table_str <- paste(table_str, row_names[i], sep = "")
    }
    
    
    for (j in 1:col_dim) {
      table_str <- paste(table_str, data[i, j], sep = " \\ ")
    }
  }
  
  return (table_str)
}