### PUT THIS CODE IN ~/.bashrc ###

# Function returns the current branch name as string
#  if the working directory is under git version control
git_ps1()
{
  GIT_BRANCH=$(git branch --show-current 2>/dev/null)
  if [ "${GIT_BRANCH}" != '' ]; then echo "(${GIT_BRANCH}) "; fi
}

# Use git_ps1 function in PS1 to prepend git working branch to bash prompt.
PS1="\[\033[01;31m\]\$(git_ps1)\[e[0m\]${PS1}"
