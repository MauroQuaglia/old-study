# ${parametro:?msg_err}
# I : servono solo quando parametro è stato dichiarato, ma non impostato.

p1=`pwd`
echo ${p1:?"Impostalo!"} # /home/xpuser/studio/mauro-quaglia/studio/bash/sostituzione-di-parametro

p2=
echo ${p2:?"Impostalo!"} # [messagi-di-errore.sh: line 10: par2: Impostalo! ] Dato che par2 è dichiarato ma non impostato.

