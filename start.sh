if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Azanpopz/rename-pro-eva.git /rename-pro-eva
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /rename-pro-eva
fi
cd /rename-pro-eva
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
