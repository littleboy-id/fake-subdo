#!/usr/bin/bash

#Warna
b='\e[1;34m' #blue
g='\e[1;32m' #green
p='\e[1;35m' #purple
c='\e[1;36m' #cyan
r='\e[1;31m' #red
w='\e[1;37m' #white
y='\e[1;33m' #yellow

banner(){
clear
echo    ❛ ━━━━━･━━━━━━･━━━━━━･❪ ❁ ❫ ･━━━━━━ ━━━━━･━━━━━━･❜
  echo   Author:./LittleBoy
 echo    ❛ ━━━━━･━━━━━━･━━━━━━･❪ ❁ ❫ ･━━━━━━ ━━━━━･━━━━━━･❜

}
menu(){
printf "
$g Pilih :
$y[1]$c Buat Fake Deface
$y[2]$r Exit

"
}
banner
menu
read -p "=> " pa

if [ $pa = 1 ]||[ $pa = satu ];
then
read -p "Nama Website Lu=> http://" domain
read -p "Subdomain (ex: littleboy)=> " subdo
read -p "Jumlah => " jumlah
read -p "file (ex: list.txt) => " output
count=1
while [ $count -le $jumlah ]
do
printf "http://$subdo$RANDOM.$domain\n" >> $output
echo "[$count]  Prosses Ya Syng :3=> $output"
sleep 0;
(( count++ ))
done
echo " Udh Selesai Gann:) "
echo
echo
echo
echo " Silahkan pindah filenya"
echo 
echo " nih caranya :"
echo "ketik : ls untuk melihat file"
echo "ketik : cp (ex: cp list.txt downloads)
echo " kalau udah ,copas saja di defacer.id"
echo -e $g "  (-) $output (-)"
exit

else
exit

fi
