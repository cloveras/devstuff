# Bash

.bash_profile

```
# Maven autocompletion
# https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
. ~/.maven_bash_completion.bash

# Git branch in prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'
}
export PS1='\h:\w$(parse_git_branch) \$ '
```

## Prompt

```[CLMBP:~/Dev/devstuff]  [master] $ ```

# Git

.gitconfig

```
[credential]
	helper = osxkeychain
[user]
	name = Christian Løverås
	email = cl@superelectric.net
[alias]
	co = checkout
	cm = commit -m
	s = status
	f = fetch -p
	p = pull
	b = branch
	l = log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen%cr %C(bold blue)by %an %Creset' --abbrev-commit
	t = tag -l
```

	
