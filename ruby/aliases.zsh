alias r='rbenv local 1.8.7-p358'

alias rc='bundle exec rails console'
alias rs='bundle exec rails server'

alias b='bundle'
alias bi='b install --path vendor/bundle'
alias be='bundle exec'
alias bl='bundle list'
alias bu='bundle update'
alias bp='bundle package'
alias bout='bundle-outdated'
alias binit='bi && bp && echo "vendor/bundle" >> .gitignore'
alias bake='be rake'

alias migratep='RAILS_ENV=production bake db:migrate'
alias migrate='RAILS_ENV=development bake db:migrate'
