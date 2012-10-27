# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Basic directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Super user
alias _='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias l='ls -la'
alias ll='ls -l'
alias ks=ls # often screw this up

alias afind='ack-grep -il'

export WDHOME=$HOME/.wd
#export TERM=xterm-color
export TERM=screen
source $WDHOME/wdaliases.sh # 2012-10-18 already happening in .zshrc
# next line giving zsh: file exists: /Users/rahul/.wd/wdenv
#
wdenv
export LS_OPTIONS='-F --color'
# HERE IS HOW LS_COLORS os getting its value
# eval `dircolors -b ~/colorrc-ansi` # error in zsh
alias ls="ls $LS_OPTIONS"
# RK added on 20070208 20:46:28
# http://www.caliban.org/bash/
# correct minor cd errors
#shopt -s cdspell
#  allow extended grep patterns in ls and other commands
#shopt -s extglob
alias l='ls -otrh'
alias lc='ls -F --color=none'
#alias mysql='/usr/local/mysql/bin/mysql'
#alias mysqladmin='/usr/local/mysql/bin/mysqladmin'
#alias safe_mysqld='sudo /usr/local/mysql-standard-4.0.17-apple-darwin6.8-powerpc/bin/safe_mysqld'
#alias mysqld_safe='sudo /usr/local/mysql-standard-4.0.17-apple-darwin6.8-powerpc/bin/safe_mysqld'
#alias vim='/Applications/Vim.app/Contents/MacOS/Vim'
alias irb='irb --readline -r irb/completion --prompt inf_ruby'
alias ri='ri -f ansi -T'
alias helpdoc='links file:///Users/rahul/Documents/ruby/core-1.8.6_HEAD/index.html'
alias opendoc='open file:///Users/rahul/Documents/ruby/core-1.8.6_HEAD/index.html'
#alias helpruby='links file:///Users/rahul/Documents/ruby/core-1.8.6_HEAD/index.html'
alias helpruby='links file:///Users/rahul/Documents/ruby/ruby_1_9_2_core/index.html'
alias helpruby19='open http://yardoc.org/docs/ruby-core/'
alias helpruby187='open http://ruby-doc.org/core-1.8.7/index.html'
#alias helpstdlib='links file:///localhost/Users/rahul/Documents/ruby/stdlib/index.html'
alias helpstdlib='links file:///Users/rahul/Documents/ruby/ruby_1_9_2_stdlib/index.html'
alias openstdlib='open file:////Users/rahul/Documents/ruby/stdlib/index.html'
alias helpsqlite='links file:///opt/local/lib/ruby/gems/1.8/gems/sqlite3-ruby-1.2.4/doc/faq/faq.html'
#alias helpbash='links ~/Documents/Technical/abs-guide/index.html'
alias helpbash='links ~/Documents/Technical/abs-guide4/HTML/index.html'
alias helpbashref='open /Users/rahul/Documents/Technical/abs-guide4/HTML/refcards.html'
alias helpmarkdown='links /Users/rahul/Documents/Technical/markdownsyntax.html'

alias helpvimhtml='vim ~/vimHTML.html'
#alias helpyard='open http://yardoc.org/docs/yard/file:GettingStarted.md#taglist'
alias helpyard='open http://rubydoc.info/docs/yard/file/docs/GettingStarted.md'
alias totalrecall='cd ~/myblogs/totalrecall'
alias work='cd ~/work'
alias bin='cd ~/bin'
alias tmp='cd ~/tmp'
#alias locate='/sw/bin/locate'
alias vew='vim `ls -t | head -1`'
alias mmd='~/bin/multis.sh'
alias maillog='cat /var/log/mail.log'
alias systemlog='cat /var/log/system.log'
# have to keep doing this in screen !
alias PS1='PS1="\w: "'
alias gll='gem list --local'
alias k='ls -ltrh'
alias ks='ls'
#alias d='ditz'
#alias ur='vim + ~/UNIX.README'
alias ur='vim + -c "set paste" ~/UNIX.README'
#top
alias tu='top -o cpu' #cpu
alias tm='top -o vsize' #memory

#git
alias gb='git branch'
alias gba='git branch -a'
alias gcv='git commit -v'
alias gcm='git commit -m'
alias gca='git commit -a'
alias gd='git diff'
#alias gl='git pull'
alias gp='git push'
alias ga='git add'
#alias gaa='git add . && echo "git added ."'
#alias gpa='echo "running: git push --all" && git push --all'
alias gst='git status'
#alias vimbp='vi ~/.bash_profile'
#alias bp='vi ~/.bash_profile'
alias zrc='vi ~/.zshrc'
alias vrc='vi ~/.zshrc'
alias vimrc='vi ~/.vimrc'
alias helpsed='view ~/Documents/Technical/sed1line.txt'
alias sedmanual='open /Users/rahul/Documents/Technical/sed.html'
alias ff="find . -type f -name "

# http://www.amirwatad.com/blog/archives/2009/01/30/enhanced-bash/
#Make sure all terminals save history
#shopt -s histappend
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
#Increase history size
#export HISTSIZE=1000
#export HISTFILESIZE=1000
#Use GREP color features by default
export GREP_OPTIONS='--color=auto'
#if [ -f /opt/local/etc/bash_completion ]; then
   #. /opt/local/etc/bash_completion
#fi
alias bq='b q -CLO -CAN'
alias reddit='open  http://www.reddit.com/r/programming/'
alias hacker='open  http://news.ycombinator.com/'

## todo related
alias t='todo.sh -d ~/todo_rbc.cfg'

#alias t='todo.sh -d /Users/rahul/todo.cfg'
alias t='todorb'
#alias tb='t list +bugzy'
#alias tb='todo.sh -d /Users/rahul/todo.cfg'
#alias tba='tb -J bugzy add'
#alias tbb='tb list +bugzy'
#alias tbr='tb list +r'

#alias trr='todo.sh -d ~/todo_rbc.cfg'
#alias tra='trr -J rbc add'

alias b='bugzy -d /Users/rahul/bugzy.cfg' # use this for small bugs and mistakes I don't wanna store
alias bu='bugzyrb'  # issues that will take longer
alias di='diary.sh'
alias tg='todoapp.sh -d ~/ ' # global todo general, like learnings
#alias ta='todoapp.sh '
# open last file ?
#alias lvim='vim -c "normal '\''0"'

# editors : elvis - fast vi, zile - tiny emacs
alias e='elvis'
alias m='most'
#alias z='zile'
alias notes='appenddiary.sh NOTES'
#alias view='/opt/local/bin/view -u ~/.viewrc --noplugins' # vanished ???
alias view='/usr/local/bin/view -u ~/.viewrc --noplugins'
alias emacsbind='view /Users/rahul/Documents/Technical/emacs_bindings.html'
#alias rm="/Users/rahul/.trsh.pl" # TRSH , won't clear the trash
alias rm="/Users/rahul/bin/trash"
#alias undo="/Users/rahul/.trsh.pl -u" # TRSH
# so common modules can be placed here and called from anywhere witohout having to specify -I each time
export RUBYLIB=~/work/projects/rbcurse-core/lib
export MANPAGER='most'
#[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
alias mdf='mdfind -name'
. ~/bin/z.sh # http://github.com/rupa/z/blob/master/z.sh directory jumper
alias vim='/usr/local/bin/vim' # vim 7.3 not released as port as yet
alias vi='/usr/local/bin/vim'
#    ruby lightning gem
alias lg=lightning   
source /Users/rahul/.lightning/functions.sh
#alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
#alias cvls='vlc -I rc'
# alias d does not work
alias d=dooby
alias bl='b list --fields="1,2,4,9,10" --sort="9,9 -r" -CLO -CAN'
alias screen='screen -A'
alias bli='brew list'

# taskwarrior
alias ta='task'
# shell program that prints bugzy output instantly
alias bs='~/bin/b.sh'
# I tried this out since emacs was loading slowly, not that i use it, it was
# due to changes in Lion in /etc/hosts

#alias emacs="/usr/local/Cellar/emacs/HEAD/Emacs.app/Contents/MacOS/Emacs -nw"
#alias et="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t -a ~/.emacs.d/bin/emacs-gui.sh"
#alias ec="/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -n -a ~/.emacs.d/bin/emacs-gui.sh"

# added 2012-10-15 after installing pip, virtualenv abd virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh

alias -g G='| egrep'
alias -g L='| less'
alias -g T='| tail'
alias -g TL='| tail -20'
alias -g RE='~/README'
alias -g AL='~/.zprezto/aliases.zsh'
