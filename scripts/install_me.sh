
# Install build essential tools
sudo apt-get install build-essential

# Docker
sudo apt-get install docker.io docker-compose -y
sudo usermod -a -G docker $USER

# RVM
sudo apt-get install curl -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby
source .rvm/scripts/rvm 
rvm version

# Ruby
rvm install ruby-2.5.5
rvm --default use ruby-2.5.5
ruby -v

# Rails need a javascript emngine installing nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

# Rails
gem update --system
gem install rails -v 5.2.0
rails -v
