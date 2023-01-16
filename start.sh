if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/botteleID/tzivi-bot.git /tzivi-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tzivi-bot
fi
cd /LUCIFER
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
