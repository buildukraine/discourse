cd ~/discourse

sudo cp -f -R ~/discourse/app/* ~/apps/discourse/htdocs/app
sudo cp -f -R ~/discourse/lib/* ~/apps/discourse/htdocs/lib
sudo cp -f -R ~/discourse/spec/* ~/apps/discourse/htdocs/spec
sudo cp -f -R ~/discourse/vendor/* ~/apps/discourse/htdocs/vendor

cd ~/apps/discourse/htdocs
sudo RUBY_GC_MALLOC_LIMIT=90000000 RAILS_ENV=production bundle exec rake tmp:clear
sudo RUBY_GC_MALLOC_LIMIT=90000000 RAILS_ENV=production bundle exec rake assets:precompile
sudo chmod -R 777 ~/apps/discourse/htdocs
sudo /opt/bitnami/ctlscript.sh restart
cd ~/discourse



