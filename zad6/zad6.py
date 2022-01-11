#!/usr/bin/python3
import cgi
form = cgi.FieldStorage()
  
tytul = form.getvalue("tytul","(no data)")
autor = form.getvalue("autor","(no data)")

plik=open("/home/stud2019/9kolodziejmir/public_html/zad6/dane6.txt", "r")
tekst=plik.read()
plik.close()
if tekst !="":
  tekst=tekst+"\n"+"<tr><td>"+tytul+"</td><td>"+autor+"</td></tr>"
else:
  tekst=tekst+"<tr><td>"+tytul+"</td><td>"+autor+"</td></tr>"
file=open("/home/stud2019/9kolodziejmir/public_html/zad6/dane6.txt", "w")
file.write(tekst)
file.close()

print ("Content-type: text/html")
print ("")
print ("<!DOCTYPE html>")
print ('''<html lang="pl-PL"><head>
<title>Komunikat</title><meta charset="UTF-8">''')
print ("</head><body>")
print("<p>Rekord zostal dodany.</p>")
print("<p><a href=http://pascal.fis.agh.edu.pl/~9kolodziejmir/zad6/zad6.html>Wroc na strone glowna.</a></p>")
print ("</body></html>")