#let cv(
  show_address: none,
  show_contact: none,
  show_links: none,
  
  address: none,
  contact: none,  
  links: none,

  body
) = [
  #set document(author: contact.name, title: contact.name)
  #set text(font: "New Computer Modern", lang: "en", size: 10pt)
  #show link: underline
  #set page(
    paper: "us-letter",
    margin: (x: 0.5in, y: 0.5in),
    header: [
      #h(1fr)
      #text(gray)[Updated on #datetime.today().display("[month repr:long] [day], [year]")]
    ],
    footer: [
      #h(1fr)
      #text(gray)[#counter(page).display("1/1", both: true)]
    ],
  )

  #align(center)[
    #block(heading(level: 1, upper(contact.name)))
    #if show_address [
      #block(text[
        #address.line1, #address.line2, #address.city, #address.state #address.zip
      ])
    ]
    #if show_contact [
      #block(text[
        #link("tel:" + contact.phone)[#contact.phone] #h(10%) #link("mailto:" + contact.email)[#contact.email]
      ])
    ]
    #if show_links [
      #grid(
        for i in range(links.len()) {
          link(links.at(i).url)[#links.at(i).display] + h(10%)
        } + h(-10%)
      )
    ]
  ]

  #body
]

#let section(name: none, body) = [
  #heading(level: 1, upper(name))
  #line(length: 100%)
  
  #body
]

#let interests(body) = [
  #body
]

#let education(
  institution: none,
  degree: none,
  attended: none,
  location: none,
  body
) = [
  #heading(level: 2, [#institution #h(1fr) #degree])
  #text(attended + h(1fr) + location)
  
  #body
]

#let employment(
  position: none,
  company: none,
  worked: none,
  body
) = [
  #heading(level: 2, [#position, #company #h(1fr) #text(size: 10pt, weight: "regular", worked)])

  #body
]

#let contribution(
  project: none,
  display: none,
  url: none,
  body
) = [
  #heading(level: 2, [#project #h(1fr) #link(url)[#text(size: 10pt, weight: "regular", display)]])

  #body
]

#let publications(
  path: none,
  style: none,
  bold: none,
  keys: none,
) = [
  #show bold: name => text(weight: "bold", name)
  #bibliography(style: style, title: none, path)
  #for i in range(keys.len()) {
    move(dx: 1000%, dy: 1000%, cite(keys.at(i)))
  }
]

