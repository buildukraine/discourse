cd ~/discourse
sudo cp -f -R ~/discourse/config/locales/client.uk.yml ~/apps/discourse/htdocs/config/locales/client.uk.yml
sudo cp -f -R ~/discourse/config/locales/server.uk.yml ~/apps/discourse/htdocs/config/locales/server.uk.yml
sudo cp -f -R ~/discourse/app/assets/javascripts/discourse/models/* ~/apps/discourse/htdocs/app/assets/javascripts/discourse/models
sudo cp -f -R ~/discourse/app/assets/stylesheets/* ~/apps/discourse/htdocs/app/assets/stylesheets
sudo cp -f -R ~/discourse/app/views/layouts/* ~/apps/discourse/htdocs/app/views/layouts

cd ~/apps/discourse/htdocs
sudo RUBY_GC_MALLOC_LIMIT=90000000 RAILS_ENV=production bundle exec rake tmp:clear
sudo RUBY_GC_MALLOC_LIMIT=90000000 RAILS_ENV=production bundle exec rake assets:precompile
sudo chmod -R 777 ~/apps/discourse/htdocs
sudo /opt/bitnami/ctlscript.sh restart
cd ~/discourse



