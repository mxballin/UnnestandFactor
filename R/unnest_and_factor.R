#' @title A Function to Unnest and Factor a Variable in a Tibble
#'
#' @description 'unnest_and_factor' takes a designated variable from a designated dataframe and helps to tidy
#' the data by making sure that if there are multiple values included in a single observation with a standardized
#' separator, these values are unnested--separated--and then factored for sorting, counting, and other grouping purposes.
#'
#' @param df The name of the stored tibble you want to work with - called 'df' for dataframe based on common stackoverflow usage
#' @param var The target variable from that tibble - called 'var' as short for variable
#' @param sep The separator string that the function should use to identify nested values; include quotations for proper usage - called 'sep' to mirror dplyr language
#'
#' @return The function returns the unnested tibble.
#' @export
#' @examples unnest_and_factor(steam_games, game_details,",")
#' unnest_and_factor(apt_buildings, parking_type, ",")
#' unnest_and_factor(apt_buildings, bike_parking, " and ")
#'
#' @references
#' Syntax suggested on StackOverflow by LyzandeR
#' link: \url{https://stackoverflow.com/questions/48062213/dplyr-using-column-names-as-function-arguments}
#' More information can aso be found in the book 'Tidy Evaluation' by Lionel Henry and Hadley Wickham
#' link: \url{https://tidyeval.tidyverse.org/dplyr.html}

unnest_and_factor <- function(df,var,sep) { #where df is the dataset, var is the variable to be unnested and sep is the separator used in the observations of the nested variable
  check <- dplyr::summarise(df, is.character({{var}})) #checking if the class of the variable is a character
  if (!check[[1]])
    warning("The variable you have selected to unnest is not a character. It will be converted to a character as part of the evaluation of this function.") #warning that the function converts the existing non-character variable, if applicable, to a character in order to work
  unnested_factored <- df %>%
    mutate({{var}}:=strsplit(as.character({{var}}), sep))%>%  #separating the observations on the given separator
    unnest({{var}}) %>% #unnesting the separated observations
    mutate({{var}}:=as.factor({{var}})) #factoring the observations for grouping capabilities
  return(unnested_factored) #returning the unnested and factored tibble
}
