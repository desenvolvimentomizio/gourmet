makecert -r -pe -n "CN=mizio CA" -ss CA -sr CurrentUser -a sha256 -cy authority -sky signature -sv MyCA.pvk MyCA.cer
certutil -user -addstore Root MyCA.cer
makecert -pe -n "CN=mizio SPC" -a sha256 -cy end -sky signature -ic MyCA.cer -iv MyCA.pvk -sv MySPC.pvk MySPC.cer
signtool sign /v /n "mizio SPC" /s SPC /d http://www.miziosistemas.com.br /t http://timestamp.url c:\mizio\pega.exe