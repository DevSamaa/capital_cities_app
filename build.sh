chmod +x ./build.sh

mkdir dist
cp ./development-log.md ./dist
cp ./enter_high_score.rb ./dist
cp ./menu.rb ./dist
cp ./questions.rb ./dist
cp ./quiz.rb ./dist
cp ./README.md ./dist

gem install colorize 
gem install artii
gem install rainbow
gem install tty-font