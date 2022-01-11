var request;
function getRequestObject() {
    if (window.ActiveXObject) {
        return new ActiveXObject("Microsoft.XMLHTTP");
    }
    else if (window.XMLHttpRequest) {
        return new XMLHttpRequest();
    }
    else {
        return null;
    }
}
function Dodaj() {
    var str = String.raw`
	<fieldset>
        <br>
        <form action="../cgi-bin/zad6.py" method="post">
            <div>
                <table>
                <tr>
                    <td>
                        <label for="tytul">Tytuł:</label>
                    </td>
                    <td>
                        <input class="i1" type="text" id="tytul" name="tytul"><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="autor">Autor:</label>
                    </td>
                    <td>
                        <input class="i1" type="text" id="autor" name="autor">
                    </td>
                </tr>
                </table>
            </div>
            <br>
            <input class="i2" type="submit" value="Wyślij">
        </form>
    </fieldset>`;
    document.getElementById('Fill').innerHTML = str;
}
function Lista(){
    var str=String.raw`
        <p>REKORDY DOSTEPNE W BAZIE DANYCH</p>
        <table class="t">
            <thead class="th">
                <tr>
                    <th>Tytul</th>
                    <th>Autor</th>
                </tr>
            </thead>
            <tbody>`;
    request = getRequestObject();
    request.open("GET", "dane6.txt", false);
    request.send();
    str+= request.responseText;
    str +="</tbody ></table >";
    document.getElementById('Fill').innerHTML = str;
}
