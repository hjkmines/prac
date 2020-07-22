const $ul = document.querySelector("ul")

fetch("http://localhost:3000/heros")
  .then(response => response.json())
  .then(parsedResponse => {
    parsedResponse.map(superhero => {
      const $li = document.createElement("li")
      $li.textContent = superhero.name 
      return $li 
    }).forEach($li => {
      $ul.append($li)
    })
  })