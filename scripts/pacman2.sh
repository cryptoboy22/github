#!/bin/bash

echo " $(tput setaf 5)  --> Do you want to (S)earch, (I)nstall, (R)emove or (U)pgrade?"
read option

	while
	[ "$option" != "s" -a "$option" != "i" -a "$option" != "u" -a "$option" != "r" -o "$option" == "" ];
	do
	echo " $(tput setaf 5)  --> Do you want to (S)earch, (I)nstall, (R)move or (U)pgrade?"
	read option

done

if [ "$option" == "u" ];
		then
		yay -Syu
			echo "" 
			echo "$(tput setaf 5)   --> Writing updated package list..." 
			sleep 2  
			pacman -Qqe > ~/backup/installed_pkglist.txt
			echo "" 
			cd $HOME/backup/
			git add .
			git commit -m "updated packages"
			echo ""
			echo "$(tput setaf 5)   --> Pushing to Git" 
			echo ""
			echo ""
			sleep 2
			git push origin main
			echo ""
			echo "   --> Done."
			echo ""


elif [ "$option" == "i" ];
		then
		echo "$(tput setaf 1)  --> Which package to install?"
		read package 
		yay -S $package
			echo "" 
			echo "$(tput setaf 5)   --> Writing updated package list..." 
			sleep 2  
			pacman -Qqe > ~/backup/installed_pkglist.txt
			echo "" 
			cd $HOME/backup/
			git add .
			git commit -m "updated packages"
			echo ""
			echo "$(tput setaf 5)   --> Pushing to Git" 
			echo ""
			echo ""
			sleep 2
			git push origin main
			echo ""
			echo "$(tput setaf 5)   --> Done."
			echo ""


elif [ "$option" == "r" ];
		then
		echo "$(tput setaf 4)   --> Which package to remove?"
		read package 
		yay -R $package
			echo "" 
			echo " $(tput setaf 5)  --> Writing updated package list..." 
			sleep 2  
			pacman -Qqe > ~/backup/installed_pkglist.txt
			echo "" 
			cd $HOME/backup/
			git add .
			git commit -m "updated packages"
			echo ""
			echo "$(tput setaf 5)   --> Pushing to Git" 
			echo ""
			echo ""
			sleep 2
			git push origin main
			echo ""
			echo "   --> Done."
			echo ""


elif [ "$option" == "s" ];
	then
	echo " $(tput setaf 1)  --> Which package to search for?"
	read package 
	yay -Ss $package

	echo "  --> Do you want to install package (Y/N)?"
		read install
		if [ "$install" == "y" ];
		then 
		yay -S $package
		echo "" 
			echo " $(tput setaf 5)  --> Writing updated package list..." 
			sleep 2  
			pacman -Qqe > ~/backup/installed_pkglist.txt
			echo "" 
			cd $HOME/backup/
			git add .
			git commit -m "updated packages"
			echo ""
			echo "$(tput setaf 5)   --> Pushing to Git" 
			echo ""
			echo ""
			sleep 2
			git push origin main
			echo ""
			echo "   --> Done."
			echo ""
		fi


		else exit


fi
