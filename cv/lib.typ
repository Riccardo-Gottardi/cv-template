#let cv(
  margin: 0.5in,
  name: "",
  description: "",
  side: [],
  body
) = {
  set page(margin: margin)
  set text(font: "Source Code Pro", size: 8pt)
  
  grid(
    rows: (auto, auto, auto, auto, 1fr),
    align(center)[
      #text(size: 24pt, weight: "bold")[#name]
      
      #text()[#description]
    ],
    
    v(0.25in),
    line(length: 100%, stroke:(paint: luma(200), dash: "dashed")),
    v(0.25in),
    
    grid(
      columns: (30%, auto, auto, auto, auto),
      column-gutter: 0.25in,
      side,
      place(
        line(length: 100%, stroke:(paint: luma(200), dash: "dashed"), angle: 90deg)
      ),
      body
    )
  )
}

#let profile-picture(path) = {
  block(
    radius: 100%,
    clip: true,
    image(path)
  )
}

#let section(title, body) = {
  rect()[
    #text(size: 14pt, style: "italic")[#upper(title)]
  ]
  body
  v(0.5in)
}

#let contact-entry(platform, contact) = {
  grid(
    columns: (20%, 80%),
    column-gutter: 0.5em,
    align: horizon,
    if (platform == "email"){
      image("images/envelope.svg", width: 24pt)
    } else if (platform == "github") {
      image("images/github.svg", width: 24pt)
    }else if (platform == "linkedin") {
      image("images/linkedin.svg", width: 24pt)
    }else if (platform == "phone") {
      image("images/phone.svg")
    } else {
      platform
    },
    if (platform == "email"){
      link("mailto:"+contact, contact)
    } else if (platform == "github" or platform == "linkedin") {
      link(contact, contact)
    }else if (platform == "phone") {
      link("tel:"+contact, contact)
    } else {
      contact
    },
    
  )
  v(0in)
}

#let language-entry(language, level) = {
  grid(
    columns: (1fr, auto),
    language,
    level
  )
  v(0in)
}

#let work-entry(role, company, years) = {
  text(size: 14pt)[#role]
  grid(
    columns: (1fr, auto),
    align(top)[#text(size: 10pt)[#company]],
    align(horizon)[#align(right)[#text()[#years]]]
  )
  v(0.25in)
}

#let education-entry(course, title, institute, years, skills: ()) = {
  text(size: 14pt)[#course]
  grid(
    columns: (1fr, auto),
    align(top)[#text(size: 10pt)[#title]],
    align(horizon)[
      #align(right)[#text()[#institute]]
      #align(right)[#text()[#years]]
    ]
  )
  
  v(0in)
  
  if skills != () {
    text("Skills", size: 10pt)
    v(0in)
    list(..skills)
  }
  v(0.25in)
}

