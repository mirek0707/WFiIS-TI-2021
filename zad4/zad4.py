#!/usr/bin/python3
import os
import datetime
import cgi
form = cgi.FieldStorage()
  
tytul = form.getvalue("tytul","(no data)")
autor = form.getvalue("autor","(no data)")
data=str(datetime.datetime.now().strftime("%Y/%m/%d %H:%M:%S"))
ip=os.environ['REMOTE_ADDR']

plik=open("/home/stud2019/9kolodziejmir/public_html/cgi-bin/dane.txt", "r")
tekst=plik.read()
plik.close()

tekst=tekst+"\n"+tytul+";"+autor+";"+data+";"+ip+';;'
file=open("/home/stud2019/9kolodziejmir/public_html/cgi-bin/dane.txt", "w")
file.write(tekst)
file.close()

print ("Content-type: text/html")
print ("")
print ("<!DOCTYPE html>")
print ("<html><head>")
print ("<title>Baza Danych</title>")
print ("<style type='text/css'>")
print ("table {border: 2px solid darkblue;border-collapse: collapse;float: left;margin-left: 30px;}")
print("thead {background-color: LemonChiffon ;}")
print("tbody tr:nth-child(odd){background-color: MintCream;}tbody tr:nth-child(even){background-color:OldLace  ;}")
print("td{padding-left: 8px;padding-right: 8px;padding-top:2px;padding-bottom:2px}")
print ("</style></head><body>")
print("<p>REKORDY DOSTEPNE W BAZIE DANYCH</p>")


print ("<table><thead><tr><th>Tytul</th><th>Autor</th><th>Data</th><th>IP</th></tr></thead><tbody>")
tekst = tekst.split(";\n")
for l in tekst:
  tytul = l.split(";")[0]
  autor = l.split(";")[1]
  data = l.split(";")[2]
  ip = l.split(";")[3]
  print ("<tr><td>"+tytul+"</td><td>"+autor+"</td><td>"+data+"</td><td>"+ip+"</td></tr>")
print ("</tbody></table></body></html>")