mode=$(iwconfig | sed -n '/Mode:/s/.*Mode://; s/ .*//p')

echo $mode


https://github.com/dhasirar/instax