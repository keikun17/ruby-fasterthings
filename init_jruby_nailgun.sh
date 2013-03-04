NAILGUN_PROCESS=$(ps -ef | grep "jruby" | grep -v "grep" | wc -l)
if [ $NAILGUN_PROCESS -eq 0 ];
  jruby --ng-server
then
fi

alias jn='jruby --ng -S'
alias jnbe='jruby --ng -S bundle exec'
