TITLE=$(cat `find /home/panbet/ -name 'MANIFEST.MF' -type f` | awk '/Implementation-Title/{print $2}')
VERSION=$(cat `find /home/panbet/ -name 'MANIFEST.MF' -type f` | awk '/Implementation-Version/{print $2}')
ARTIFACTS=$(find /home/panbet/ \( -name '*.jar' -o  -name '*.war' \) -type f | grep -P 'log4j.*\.jar' | cut -d '/' -f 11)

echo $TITLE
echo $VERSION
echo $ARTIFACTS
