################## bash-git-prompt ##############
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_THEME=Minimal
  GIT_PROMPT_SHOW_UPSTREAM=1
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
################## Kotlin ######################
function kotlinr() {
  echo Compiling, please wait...
  kotlinc $1 -include-runtime -d out.jar
  java -jar out.jar
}

export LANG=en_US.UTF-8

