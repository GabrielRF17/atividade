for file in $(ls)
do
	if [[ -d $file || $file = $BASH_SOURCE ]]
	then
		continue
	fi

	Fword=$(head -n1 $file | cut -d ' ' -f 1)

	if [ -z $Fword ]
	then
		echo "Arquivo vazio"
	fi

	mv $file $Fword

done
	
