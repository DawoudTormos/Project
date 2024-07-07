# Fetch changes in the main project
git fetch

# Loop through each submodule and check for updates
git submodule foreach 'git fetch && git status && git pull origin $(git rev-parse --abbrev-ref HEAD)'


echo "\n\n\n updating changes to the main repo"
# Add and commit submodule updates in the main project
git add .
git commit -m "Update submodules to latest commits"
git push