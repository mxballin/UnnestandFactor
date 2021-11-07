#testing that using the function and doing the specific unnesting action produce the same results and that the unnested column is factored
#using the `steam_games` dataset and the `languages` variable, which has NAs

#count NAS
datateachr::steam_games %>%
  count(is.na(languages))

#unnesting manually
unnested_languages <- datateachr::steam_games %>%
  dplyr::mutate(languages=strsplit(as.character(languages), ",")) %>%
  tidyr::unnest(languages)%>%
  dplyr::mutate(languages=as.factor(languages))

#unnesting using the custom function
function_languages <- unnest_and_factor(datateachr::steam_games,languages,",")

#testing that the two unnested tibbles match
testthat::test_that("factorandmatched", {
  testthat::expect_s3_class(function_languages$languages, "factor") #testing that the variable `languages` has the s3 class "factor"
  testthat::expect_identical(unnested_languages, function_languages)}) #testing that the output is the same as if the unnesting had been done manually

rm(function_languages, unnested_languages)

#testing that the unnesting is occurring by asking r to check whether the new tibble has a higher number of rows compared to the original tibble but has the same number of columns with the same names.
#using the `apt_buildings` dataset and the `facilities_available` variable, which

#unnesting manually
unnested_facilities <- datateachr::apt_buildings %>%
  dplyr::mutate(facilities_available=strsplit(as.character(facilities_available), "/")) %>%
  tidyr::unnest(facilities_available)%>%
  dplyr::mutate(facilities_available=as.factor(facilities_available))

#unnesting using the custom function
function_facilities <- unnest_and_factor(datateachr::apt_buildings,facilities_available,"/")

#testing that the number of rows has increased from the original tibble but that the number and names of columns has stayed the same

testthat::test_that("rowcolcount", {
  testthat::expect_gt(nrow(function_facilities), nrow(datateachr::apt_buildings)) #inequality of row count
  testthat::expect_equal(ncol(function_facilities), ncol(datateachr::apt_buildings)) #matching column count
  testthat::expect_equal(colnames(function_facilities),colnames(datateachr::apt_buildings)) #matching column names
})

rm(function_facilities, unnested_facilities)

#testing that evaluating the `id` variable of `steam_games` would generate a warning.
#evaluating the `id` column in `steam_games`

testthat::test_that("warning", {testthat::expect_warning(unnest_and_factor(datateachr::steam_games, id, ","))})
