# git_ps1
Tired of working in the wrong git branch by accident?  

Place this function in your .bashrc:  

```bash
    # Function to get current git branch  
    git_ps1()  
    {  
      GIT_BRANCH=$(git branch --show-current 2>/dev/null)  
      if [ "${GIT_BRANCH}" != '' ]; then echo "(${GIT_BRANCH}) "; fi  
    }  
```
Use it to set the PS1 variable which contains the prompt.  
```bash
    # Prepend current git branch to bash prompt
    PS1="\[\033[01;31m\]\$(git_ps1)${PS1}"  
```
München Januar 2024, de-arl.  
