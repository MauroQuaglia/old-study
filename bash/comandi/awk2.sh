file_name=$1

shift
until [[ $# > 0 ]]
do
 echo search $1
 shift
done

searh()
{
echo "ciao"
}


INIT_TAB_AWK=""
conteggio=0
FILE_INDICATO=$1
E_ERR_PARAM=65

shift
                      # Le lettere sono state specificate.
for lettera in `echo $@`   # Per ognuna . . .
  do
  INIT_TAB_AWK="$INIT_TAB_AWK tab_search[${conteggio}] = \"$lettera\";\
   final_tab[${conteggio}] = 0; "
  # Passato come parametro al successivo script awk.
  conteggio=`expr $conteggio + 1`
done

# DEBUGGING:
# echo $INIT_TAB_AWK;

cat $FILE_INDICATO |
# Il file viene collegato, per mezzo di una pipe, al seguente script awk.

# --------------------------------------------------------------------------------
# La versione precedente dello script usava:
# awk -v tab_search=0 -v final_tab=0 -v tab=0 -v nb_letter=0 -v chara=0 -v chara2=0 \

awk \
"BEGIN { $INIT_TAB_AWK } \
{ split(\$0, tab, \"\"); \
for (chara in tab) \
{ for (chara2 in tab_search) \
{ if (tab_search[chara2] == tab[chara]) { final_tab[chara2]++ } } } } \
END { for (chara in final_tab) \
{ print tab_search[chara] \" => \" final_tab[chara] } }"
# --------------------------------------------------------------------------------
#  Niente di così complicato, solo . . .
#+ cicli for, costrutti if e un paio di funzioni specializzate.

exit $?

# Confrontate questo script con letter-count.sh.
