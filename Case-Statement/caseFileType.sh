#!/bin/bash -x

for fileName in $(ls)

do 
	ext=${fileName##*\.}
		
		case "ext" in
		
			java)
				echo $fileName : Java source file
			;;
			o)
				echo $fileName : Object file
			;;
			sh)
				echo $fileName : Shell Script
			;;
			txt)
				echo $fileName : Text file
			;;
			*)
				echo $fileName : Not procesed
			;;
		esac
done
			
