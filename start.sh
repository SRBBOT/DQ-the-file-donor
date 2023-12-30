if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/SRBBOT/DQTheFileDonor.git /DQ-the-file-donor
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQTheFileDonor
fi
cd /DQTheFileDonor
pip3 install -U -r requirements.txt
echo "Starting DQTheFileDonor...."
python3 bot.py
