ARTEFACT=$(find /home/panbet/*/*/*/webapps/ -maxdepth 1  \( -name '*.jar' -o -name '*.war' \) -type f)

for i in $ARTEFACT
do
    for j in $i 
    do
        LIBS=$(jar tf $j | grep log4j | grep .jar | cut -d '/' -f 3)
        if [[ $LIBS ]]; then 
            ART_NAME=$(ls $i | cut -d '/' -f 8)
            echo $ART_NAME
            unzip -q -c $i META-INF/MANIFEST.MF | awk '/Implementation-Version/{print $2}'
            echo $LIBS    
        fi
        printf "\n"
    done
done