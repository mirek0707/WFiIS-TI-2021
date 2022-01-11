#!/usr/bin/python3
from xml.dom import minidom
import cgitb
import sys 
import cgi 
form = cgi.FieldStorage() 

form = cgi.FieldStorage() 
opcja = form.getvalue('opcja')

data = open(opcja, 'r') 
print ("Content-Type: application/xml")
print ("")
print (data.read()) 


