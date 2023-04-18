// This is a template for a document that uses the let project macro.

#let project(
  title: "",
  abstract: [],
  keywords: [],
  authors: (),
  date: none,
  body,
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: title)
  set page(numbering: "1", number-align: center)
  
  set text(font: "New Computer Modern", lang: "zh")
  show math.equation: set text(weight: 400)
  // Title row.
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(1em, weak: true)
    #date
  ]

  // Author information.
  pad(
    top: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #author.email
      ]),
    ),
  )

  pad(
    
  )[
    #text(weight: "bold")[Abstract]: #abstract
    
    #text(style: "italic")[Keywords]: #keywords.join("   ")
  ]

  // Main body.
  set par(justify: true)
  show: columns.with(2, gutter: 1.3em)

  body
}