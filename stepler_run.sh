git clone https://gerrit.mcp.mirantis.net/mcp/stepler (or https://review.gerrithub.io/Mirantis/stepler)
cd stepler
sudo apt-get -y install libssl-dev python-dev libvirt-dev python-pip xvfb libav-tools xdotool firefox=45.0.2+build1-0ubuntu1
sudo -H pip install --upgrade pip
sudo -H pip install virtualenv
virtualenv .venv
. .venv/bin/activate
pip install -e .[libvirt]
. ~/keystonercv3
export VIRTUAL_DISPLAY=1
export OS_DASHBOARD_URL=*horizon_ip (ex: http://192.168.10.90:8078)*
echo "Make sure you have images, flavors, networks etc"
