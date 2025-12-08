#import "lib.typ": *

#show: cv.with(
  margin: 0.5in,
  name: "Mario Rossi",
  description: "I'm a goat passionate about shiny wafer. Open source entousiast, I use Arch BTW :)",
  side: [
    #profile-picture("images/sample_profile_picture.jpeg")
    
    #section("Contacts")[
      // #contact-entry("type", "contact")
      // type can be {email, github, linkedin, phone}
      #contact-entry("email", "username@email-server.tld")
      #contact-entry("github", "https://github.com/the-rest-of-the-link")
      #contact-entry("linkedin", "https://www.linkedin.com/the-rest-of-the-link")
    ]

    #section("Languages")[
      // #language-entry("language", "level")
      #language-entry("Esperanto", "Native")
      #language-entry("English", "B2")
    ]

    #section("Hobbies")[
      Jump
      
      Lick salt
    ]
  ]
)

#section("Work experience")[
  // #work-entry()
  #work-entry(
    "Silicon alternative researcher",
    "Cliff SRL",
    "2020-now"
  )
]

#section("Education")[
  // #education-entry("course name", "degree type", "emitter organisation", "years", skills: [skills list])
  #education-entry(
    "Material engineering - curricula on semiconductor", 
    "Master of Science", 
    "University of Windy Hill", 
    "2018-2020"
  )
  #education-entry(
    "Chemical engineering", 
    "Bachelor of Science", 
    "University of Hornville", 
    "2015-2018",
    skills: (
      "Group work",
      "Communication"
    )
  )
  #education-entry(
    "Scientific", 
    "High School", 
    "Public liceum of Hornville", 
    "2010-2015"
  )
]

