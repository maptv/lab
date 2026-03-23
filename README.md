# Lab Notebook Instructions

## Setup

[Posit Cloud](https://posit.cloud) is like [RStudio Desktop](https://posit.co/download/rstudio-desktop), but it only requires a web browser and comes with the [R programming language](https://cran.rstudio.com) and the [Quarto publishing system](https://quarto.org/) already installed.

We can do everything we need inside Posit Cloud, without installing [GitHub Desktop](https://desktop.github.com) or RStudio Desktop. To set up Posit Cloud, follow the steps below.

0.  Log in to or sign up for GitHub
    a.  If you already have a GitHub account, log into it (<https://github.com/login>)
    b.  Otherwise, use a pre-existing or newly-created Google account (<https://www.google.com/account/about>) to create a new GitHub account (<https://github.com/signup>)
1.  Click the plus sign (+) on the navigation bar of the GitHub Dashboard
2.  Click "New repository"
3.  Give your repository (repo) a name
4.  Click "Create repository"
5.  Copy the web address (url) of your repo
6.  Use your GitHub or Google account to create a new Posit Cloud account (<https://login.posit.cloud/register>) and select Posit Cloud as your destination
7.  Click "New Project"
8.  Click "New Project from Git repository"
9.  Paste in the repo url
10. Clicking "OK"
11. Click the green + in the top left to create a new file
12. Click "R Script"
13. Save your R Script with the name `git.R`
14. Paste the code below into `git.R`
15. Replace the name and the email address in `git.R` with your name and email address
16. When prompted by the yellow banner, click "Install"
17. Click "Source" in the upper right corner of the top left pane
18. In the new web browser window that opens, allow access and copy your personal access token (PAT)

``` r
usethis::use_git_config(
  user.name = "ccbcanpstudent",
  user.email = "ccbcanpstudent@gmail.com",
)

usethis::create_github_token()
```

## Updating

0.  Make at least one change to a file in your repo
1.  Click the "Git" tab in the top right pane of Posit Cloud
2.  Click the [check box](https://en.wikipedia.org/wiki/Checkbox#:~:text=a%20graphical%20widget%20that%20allows%20the%20user%20to%20make%20a%20binary%20choice) next to the file you changed
3.  Click "Commit" to open a popup window ([modal](https://en.wikipedia.org/wiki/Modal_window#:~:text=a%20graphical%20control%20element%20subordinate%20to%20an%20application%27s%20main%20window))
4.  Enter a commit message in the upper right corner of modal and click "Commit"
5.  Close all modals and click "Push" to push your commit to GitHub

## Publishing

0.  Push at least one commit to your repo using the instructions above so that the credentials manager has your username and PAT
1.  Copy the command below, paste it into the Posit Cloud terminal in the bottom left pane, and press Enter/Return

``` bash
quarto publish gh-pages
```

2.  Go to your repo on GitHub, click "Settings" in the navigation bar and then "Pages" in the sidebar
3.  In the [drop-down menu](https://en.wikipedia.org/wiki/Drop-down_list#:~:text=a%20graphical%20control%20element%2C%20similar%20to%20a%20list%20box%2C%20that%20allows%20the%20user%20to%20choose%20one%20value%20from%20a%20list%20either%20by%20clicking%20or%20hovering%20over%20the%20menu) under "Build and deployment" and "Branch", select `gh-pages` and click "Save"
4.  Take a break at this point while your site is being built and published, then click the link to your published site to verify that it works

## Automatic Publishing (Optional but highly recommended!)

0.  Upload the `setup.zip` file provided by your instructor to your Posit Cloud by clicking
    a.  "Upload" in the "Files" tab in the bottom right pane
    b.  "Choose File" in the modal
1.  Copy and paste the commands below into the Posit Cloud terminal and press Return/Enter to create a directory called .github/workflows which contains a file named [publish.yml](https://quarto.org/docs/publishing/github-pages.html#publish-action)

``` bash
bash setup.bash
```

If all goes according to plan, you will no longer need to run `quarto publish gh-pages` because your site will now be built and published whenever you update your site by pushing at least one commit to your repo using the instructions above.
