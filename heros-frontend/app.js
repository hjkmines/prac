const $ul = document.querySelector("ul")

fetch("http://localhost:3000/heros")
  .then(response => response.json())
  .then(parsedResponse => {
    parsedResponse.map(superhero => {
      const $li = document.createElement("li")
      $li.innerHTML = `<a href=superhero.html?id=${superhero.id}>${superhero.name}</a>` 
      return $li 
    }).forEach($li => {
      $ul.append($li)
    })
  })