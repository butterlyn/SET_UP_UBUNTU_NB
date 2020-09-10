# Run this script in bash in terminal `sudo bash set_up_ubuntu_NB.sh` in order to configure a fresh install of Ubuntu

# ----- Create document directory -----
mkdir documents
cd documents

# ----- Update all apt packages -----
apt-get update ; apt-get upgrade -y

# ----- Install apt packages -----
apt-get install -y python3
apt-get install -y jupyter
apt-get install -y unzip
apt-get install -y python-dev
apt-get install -y grip
apt-get install -y markdown
apt-get install -y python3-pip


# ----- Install python modules -----
python3 -m pip install numpy pandas acoular scipy jupyter Markdown pyargus twine wheel setuptools jupyterlab matplotlib dataclass wave wavefile soundfile arlpy shlnb control

# ----- Set up git and clone personal GitHub repos -----
git config --global user.name "butterlyn"
git config --global user.email "butterlyn888@gmail.com"
git config --global credential.helper store

git clone https://github.com/butterlyn/BUTTERLYN_WSL_FILES
git clone https://github.com/butterlyn/PYTHON_MODULE_TEMPLATE
git clone https://github.com/butterlyn/SHLNB
git clone https://github.com/uwasystemhealth/pybnk

# ----- Misc -----
if false; then

# List all apt packages, sorted by installation date
grep install /var/log/dpkg.log
# Search for apt packages
sudo apt-cache search package-example
# Open jupyter notebook
jupyter-lab --no-browser
# Update all python modules
pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U

fi
