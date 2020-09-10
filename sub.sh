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
  echo   Author: ./LittleBoy
 echo    WA   :  +1 (669) 245-7368
 echo    ❛ ━━━━━･━━━━━━･━━━━━━･❪ ❁ ❫ ･━━━━━━ ━━━━━･━━━━━━･❜

}
menu(){
printf "
$c Pilih :
$y[1]$c Buat Fake Deface
$y[2]$p Exit

"
}
banner
menu
read -p "=> " pa

if [ $pa = 1 ]||[ $pa = satu ];
then
read -p "Nama web ?=> http://" domain
read -p "Subdomainya (ex: LittleBoy Ganss:3) ?=> " subdo
read -p "Jumlahnya? (1-9999) ?=> " jumlah
read -p "filenya (tod.txt) ?=> " output
count=1
while [ $count -le $jumlah ]
do
printf "http://$subdo$RANDOM.$domain\n" >> $output
echo "[$count] Prosses Gan :v Tnggu ae --> $output"
sleep 0;
(( count++ ))
done
echo "Horeee Selesai!"
echo
echo
echo
echo " Silahkan pindah filenya"
echo 
echo " nih caranya :"
echo "ketik ls"
echo " kalau udah ,copas saja di defacer.id"
echo -e $g "  (-) $output (-)"
exit

else
exit

fi
