if [ "$(grep -Ei 'debian|buntu|mint' /etc/*release)" ]; then
  sudo apt-get update
  sudo apt-get install -y vim curl python python-pip python-dev build-essential
fi
if [ "$(grep -Ei 'fedora|redhat' /etc/*release)" ]; then
  if [ "$(which dnf)" ]; then
    sudo dnf install -y vim curl python python-pip python-libs
  else
    # assume yum is available
    sudo yum install -y vim curl python python-pip python-libs
  fi
fi

sudo pip install --upgrade pip
sudo pip install ansible
curl -fsSL https://get.docker.com/ | sh
ansible-playbook ansible/playbook.yml -vvv
