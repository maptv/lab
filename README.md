# Lab Notebook Instructions

## Setup

Posit Cloud (https://posit.cloud) is like RStudio Desktop, but it only requires a web browser and comes with R and Quarto already installed.

We can do everything we need inside Posit Cloud, without installing GitHub Desktop or RStudio Desktop. To set up Posit Cloud, follow the steps below.

0. Log in to or sign up for GitHub
  a. If you already have a GitHub account, log into it (https://github.com/login)
  b. Otherwise, use a pre-existing or newly-created Google account (https://www.google.com/account/about) to create a new GitHub account (https://github.com/signup)
1. Click the plus sign (+) on the navigation bar of the GitHub Dashboard
2. Click "New repository"
3. Give your repository (repo) a name
4. Click "Create repository"
5. Copy the web address (url) of your repo
6. Use your GitHub or Google account to create a new Posit Cloud account (https://login.posit.cloud/register) and select Posit Cloud as your destination
7. Click "New Project"
8. Click "New Project from Git repository"
9. Pasting in the repo url
10. Clicking "OK"
11. Click the green + in the top left to create a new file
12. Click "R Script"
13. Save your R Script with the name git.R
14. Paste the code below into git.R
15. Replace the name and the email address in git.R with your name and email address
16. When prompted by the yellow banner, click "Install"
17. Click "Source"
18. In the new web browser window that opens, allow access and copy your personal access token (PAT)
19. Paste your PAT into the console and press Enter

```r
usethis::use_git_config(
  user.name = "ccbcanpstudent",
  user.email = "ccbcanpstudent@gmail.com",
)

usethis::create_github_token()
```

## Version Control Workflow

