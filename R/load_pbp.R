seasons <- 2020
pbp <- purrr::map_df(seasons, function(x) {
  readRDS(
    url(
      glue::glue("https://raw.githubusercontent.com/guga31bb/nflfastR-data/master/data/play_by_play_{x}.rds")
    )
  )
})

pbp_past <- readRDS("data/pbp_2020-2019.rds")
pbp_2020 <- saveRDS(pbp, "data/pbp_2020.rds")
