var ajax = new XMLHttpRequest();
var method = "GET";
var url = "booklist.php";

ajax.open(method, url, true);
// sendindg ajax request
ajax.send();

ajax.onreadystatechange = function()
{
  if (this.readyState == 4 && this.status == 200)
  {

    }
}
