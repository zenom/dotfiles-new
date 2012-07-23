alias r18='rbenv local 1.8.7-p358'
alias r19='rbenv local 1.9.3-p194'

alias rc='bundle exec rails console'
alias rs='bundle exec rails server'

alias pryr="pry -r ./config/environment"
alias b='bundle'
alias bi='b install --path vendor/bundle'
alias be='bundle exec'
alias bl='bundle list'
alias bu='bundle update'
alias bp='bundle package'
alias bout='bundle-outdated'
alias bake='be rake'
alias shake='noglob bundle exec rake'
alias spec='bake ctm:run_specs'

alias migratep='RAILS_ENV=production bake db:migrate'
alias migrate='RAILS_ENV=development bake db:migrate'

