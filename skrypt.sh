komenda=$1

if [ $komenda = "--logs" ]
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
	

fi
