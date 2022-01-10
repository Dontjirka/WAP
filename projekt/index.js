document.getElementById("add").onclick = function() {
  var text = document.getElementById("input").value; 
  var li = document.createElement("li");
  li.textContent = text;
  document.getElementById("list").appendChild(li);
  document.getElementById("input").value = "";
}