#let project(
    title: "",
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

    set par(justify: true)

    text(fill: red)[
        #outline(depth: 2,indent: true,title: none,fill: none)
    ]

    body
}

