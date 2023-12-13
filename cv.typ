#let cv(address: none, contact: none, links: none, body) = [
  #set document(author: contact.name, title: contact.name)
  #set text(font: "New Computer Modern", lang: "en", size: 10pt)

  #show link: underline

  #set page(
    paper: "us-letter",
    margin: (x: 1in, y: 1in),
    header: locate(
      loc => if [#loc.page()] == [1] [
        #h(1fr)
        #text(gray)[#datetime.today().display("[month repr:long] [day], [year]")]
      ] else [
        #h(1fr)
        #text(gray)[#contact.name]
      ],
    ),
    footer: [
      #h(1fr)
      #text(gray)[#counter(page).display("1/1", both: true)]
    ],
  )

  #align(
    center,
  )[
    #block(heading(level: 1, upper(contact.name)))
    #block(
      text[
        #address.line1, #address.line2, #address.city, #address.state #address.zip
      ],
    )
    #block(
      text[
        #link("mailto:" + contact.email)[#contact.email] #h(10%) #link("tel:" + contact.phone)[#contact.phone]
      ],
    )
    #grid(for i in range(links.len()) {
      link(links.at(i).url)[#links.at(i).display] + h(10%)
    } + h(-10%))
  ]

  #body
]

#let section(name: none, body) = [
  #heading(level: 2, upper(name))
  #line(length: 100%)

  #body
]

#let interests(body) = [
  #body
]

#let education(institution: none, degree: none, attended: none, location: none, body) = [
  #heading(level: 3, [#institution #h(1fr) #degree])
  #text(attended + h(1fr) + location)

  #body
]

#let employment(position: none, company: none, worked: none, body) = [
  #heading(
    level: 3,
    [#position, #company #h(1fr) #text(size: 10pt, weight: "regular", worked)],
  )

  #body
]

#let project(name: none, display: none, url: none, body) = [
  #heading(
    level: 3,
    [#name #h(1fr) #link(url)[#text(size: 10pt, weight: "regular", display)]],
  )

  #body
]

#let publications(path: none, bold: none) = [
  #show bold: name => text(weight: "bold", name)
  #bibliography(title: none, style: "ieee", full: true, path)
]
