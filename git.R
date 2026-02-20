install.packages("usethis")
install.packages("gitcreds")

usethis::use_git_config(
  user.name = "maptv",
  user.email = "mlaptev@ccbcmd.edu",
)

usethis::create_github_token()

gitcreds::gitcreds_set()

usethis::git_default_branch_rename(from = NULL, to = "main")

usethis::use_git_remote(
  name = "origin",
  url = "https://github.com/maptv/lab",
)

usethis::git_remotes()
usethis::git_default_branch_configure("main")

usethis::git_default_branch()
usethis::git_default_branch_rename("master")

usethis::use_git_remote(url = "https://github.com/maptv/lab", overwrite = TRUE)

usethis::use_github(
  "maptv/lab"
)

usethis::git_default_branch_configure("main")

usethis::use_github(
  "maptv/lab"
)
