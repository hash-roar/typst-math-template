#let project(
    title: "",
    abstract: [],
    authors:(),
    date: none,
    body
) ={
    set document(author: authors.map(a => a.name),title: title)

    set page(numbering: "1",number-align: center)

    set text(lang: "zh")

    show par : set block(above: 1.2em,below: 1.2em)

    set heading(numbering: "1.1")
    set par(leading: 0.75em)

    align(center)[
        #block(text(weight: 700,1.75em,title))
        #v(1.2em,weak: true)
        #date
    ]

    pad(
        top: 0.8em,
        x:2em,
        grid(
            columns: (1fr,) * calc.min(3,authors.len()),
            gutter: 1em,
            ..authors.map(author=>align(center)[
                *#author.name* \
                #author.email
            ]),
        ),
    )

pad(
    x: 2em,
    top: 1em,
    bottom: 1.5em,
    align(center)[
      #heading(
        outlined: false,
        numbering: none,
        text(0.85em, smallcaps[Abstract]),
      )
      #abstract
    ],
  )

    set par(justify: true)

    body
}