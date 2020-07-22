let params = new URLSearchParams(window.location.search)
const $ul = document.querySelector('ul')

let id = params.get('id')

fetch(`http://localhost:3000/heros/${id}`)
  .then(response => response.json())
  .then(response => {
    const $h1 = document.createElement("h1")
    $h1.textContent = `name: ${response.name}  -  Super Name: ${super_name}` 
    document.body.prepend($h1) 

    response.powers.map(power => {
      const $li = document.createElement("li")
      $li.textContent = power.name 
      return $li 
    }).forEach($li => {
      $ul.append($li)
    })
  })