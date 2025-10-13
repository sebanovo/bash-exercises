if [ -f .env ]
then
  source .env
else
  echo "Error: .env file not found!"
  exit 1
fi

echo $VARIABLE