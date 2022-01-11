var xmlHttp;
function getRequestObject() {
  if (window.ActiveXObject) {
    return new ActiveXObject("Microsoft.XMLHTTP");
  }
  else if (window.XMLHttpRequest) {
    return new XMLHttpRequest();
  }
  else{
    return null;
  }
}
function wczytajPlik(i, lista) {
  xmlHttp=getRequestObject();
  
  if (xmlHttp) {
    if (i == 1) {
      var plik = "opcje1.xml";
    }
    else {
      var plik = "opcje2.xml";
    }

    var url = "../cgi-bin/zad6b.py" + "?opcja=" + escape(plik);
    xmlHttp.open("GET", url, true);
    xmlHttp.onreadystatechange = function () {
      if (xmlHttp.readyState == 4) {
        if (xmlHttp.status == 200){
          var xml = xmlHttp.responseXML;
          XMLopcje(xml, lista);
        }
      }
    }
    xmlHttp.send(null);
  }
}

function XMLopcje(xml, lista) {
  var listaOpcji = document.getElementById(lista);
  var opcje = xml.getElementsByTagName('options');

  listaOpcji[0] = new Option("Wybierz opcję", "");
  for (var i = 0; i < opcje[0].getElementsByTagName("option").length; i++) {
    var opcja = opcje[0].getElementsByTagName("option")[i].firstChild.nodeValue;
    listaOpcji[i + 1] = new Option(opcja, opcja);
  }
}

function zmienListe(i, lista) {
  var div = document.getElementById(i);
  var lista1 = document.getElementById(lista);
  var opcja = lista1[lista1.selectedIndex].value;
  div.innerHTML = opcja;
}