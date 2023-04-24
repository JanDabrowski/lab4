komenda=$1

if [ $komenda = "--date" ]
then
	echo $(date)
elif [ $komenda = "--logs" ]
then
	arg="$#"
	if [ $arg = "2" ]
	then
		ARGUMENT=$2
		d=1
		for ((i=$d; i<=$ARGUMENT; i++))
		do
			touch log$i.txt
			echo "log"$i > log$i.txt
			echo  $(date) >> log$i.txt
		done
	else
                for i in {1..100}
                do
                        touch log$i.txt
                        echo "log"$i > log$i.txt
                        echo  $(date) >> log$i.txt
                done
	fi
	
elif [ $komenda = "--help" ]
then
	echo "--date - Wyswietla aktualna date"
	echo "--logs (ilosc logow) - tworzy pliki z logami (domyslnie 100)"
	echo "--help - wyswietla wlasnie te wiadomosc"
fi
