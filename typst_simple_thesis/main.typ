#import "./template.typ": *

#show: project.with(
  title: "A Simple Template For Homework",
  authors: (
    (name: "cowboy bebop", email: "duangduang@gmail.com"),
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  date: "April 2, 2023",
)

#let inline_code(text)={
  box(
    fill: luma(230),
    outset: 2pt,
    radius: 2pt,
    text,
  ) 
}

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!

= Introduction 
#lorem(60)

== In this paper
#lorem(20)
#incline_code("hello world")
=== Contributions
#lorem(40)

= Related Work
#lorem(50)

#block(
  fill: luma(230),
  outset: 4pt,
  radius: 4pt,
  lorem(30),
)
