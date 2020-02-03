#!/bin/bash
#1
echo "Shell Script é demais!"

#2
mensagem="= Shell Script com variáveis é demais"

echo  "mensagem" $MENSAGEM

#3
HOSTANAME=$hostname 
echo "Este script esta rodando no pc" $HOSTANAME

#4
 ARQUIVO="/home/william/scripts.sh"
 if [ -e"$ARQUIVO" ]
    then
    echo "o caminho_está habilitado!"
fi
   if [ -w"$ARQUIVO" ]
    then
    echo "voce tem permissão para editar" $ARQUIVO
   else
   echo "voce nao tem permissao para editar" $ARQUIVO 
    fi

#5

PALAVRAS="shell script usando estrutura repetição for terminal"
for ESCREVA in $PALAVRAS
  do
    echo $ESCREVA
  done
  

#6

ARQUIVO="O USUARIO DA O ARQUIVO"

read ARQUIVO

echo "voce tem permissao de acesso" $ARQUIVO
if [  -d $ARQUIVO ] 
  then
 echo  "parametro passado é arquivo é diretório"
elif [ -f $ARQUIVO ]
  then
	echo  "parametro passado é  arquivo comum"
else 
	echo " parametro é outro tipo"
fi

#7
ARQUIVO=$1

if [ -f "$ARQUIVO" ]
  then
    echo "$ARQUIVO é um arquivo comum"
elif [ -d "$ARQUIVO" ]
  then
    echo "$ARQUIVO é um diretório"
else
    echo "$ARQUIVO é alguma outra coisa"
fi
ls -l $ARQUIVO
  



#8
ARQUIVO=$@


for ARQUIVO in $@   

do 
if [  -d $ARQUIVO ] 
  then
 echo  "parametro passado é arquivo é diretório"
elif [ -f $ARQUIVO ]
  then
	echo  "parametro passado é  arquivo comum"
else 
	echo " parametro é outro tipo"
fi
done
 ls -l $ARQUIVO


#9

ARQUIVO=$1


if [ -d $ARQUIVO ]
then  QUANTIDADE=`  ls -l $ARQUIVO  | wc -l `
	echo "o $ARQUIVO  tem $QUANTIDADE   linhas  "

 else
       echo "Parametro $ARQUIVO  não é diretorio"
fi

#10 

DAY=$(date +%F)

for FILE in `ls *.png`
 do
    mv $FILE ${DAY}-${FILE}
 done


#11

DIRECTORY=$1
EXTENSION=$2

DAY=$(date +%F)

cd $DIRECTORY

for FILE in `ls *.$EXTENSION`
 do
    echo "Renomeando $FILE para ${DAY}-${FILE}"
    mv $FILE ${DAY}-${FILE}
 done















