#import "template.typ": *


// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "math",
  authors: (
    (name: "cowboy bebop", email: "example@gmail.com"),
  ),
  abstract: [#lorem(30)],
  date: "April 18, 2023",
  keywords: ("word1", "word2", "word3"),
)

#set heading(numbering: "1.1")
// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!
= Introduction
#lorem(10)

$
  T_1 = (sqrt(N)(O_(11)O_(22)-O_(12)O_(21))) / sqrt(n_1n_2C_1C_2 )
$

== In this paper
#lorem(20)
#figure(
  caption: "Figure 1: A figure caption.",
  image("cell.png")
)

=== Contributions
#lorem(40)

= Related Work
#lorem(500)
