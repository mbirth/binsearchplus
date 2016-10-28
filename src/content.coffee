# Binsearch+
# @author Markus Birth <markus@birth-online.de>

console.log 'Binsearch+'

# Add "+" to title
document.title = document.title.replace 'Binsearch', 'Binsearch+'
# Replace favicon by our "b+" one (http://stackoverflow.com/questions/260857/changing-website-favicon-dynamically)
iconurl = chrome.extension.getURL 'binsearchplus_16.png'
console.log 'Icon is: %o', iconurl
favicon = document.querySelector("link[rel*='icon']") || document.createElement 'link'
favicon.type = 'image/png'
favicon.rel  = 'shortcut icon'
favicon.href = iconurl
document.getElementsByTagName('head')[0].appendChild favicon

# Make labels of radiobuttons clickable
idctr = 0
inputs = document.getElementsByTagName 'input'
for input in inputs
    continue if input.type isnt 'radio'
    console.log 'Found %o', input
    # Add element id
    inputid = document.createAttribute 'id'
    inputid.value = "lbl#{idctr++}"
    input.attributes.setNamedItem inputid
    # Add <label> around following text
    textElem = input.nextSibling
    span = document.createElement 'label'
    span.innerHTML = textElem.textContent
    spanfor = document.createAttribute 'for'
    spanfor.value = input['id']
    span.attributes.setNamedItem spanfor
    textElem.replaceWith span

# Make rows of results table clickable
tbl = document.getElementById 'r2'
rows = tbl.querySelectorAll 'tr'
for row in rows
    row.onclick = (e) ->
        #console.log 'Clicked %o with %o', this, e
        chckbx = this.querySelector 'input[type="checkbox"]'
        chckbx.checked = !chckbx.checked
