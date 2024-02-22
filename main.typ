#import "cv.typ": *

#show: cv.with(
  contact: (
    name: "Yifei Sun",
    phone: "+18014338213",
    email: "ysun@ccs.neu.edu",
    orcid: "0000-0002-1591-7458",
  ),
  address: (
    line1: "214 WVH",
    line2: "440 Huntington Ave",
    city: "Boston",
    state: "MA",
    zip: "02115",
  ),
  links: (
    (display: "ccs.neu.edu/~ysun", url: "https://ccs.neu.edu/~ysun"),
    (display: "github.com/stepbrobd", url: "https://github.com/stepbrobd"),
    (
      display: "linkedin.com/in/yifei-s",
      url: "https://www.linkedin.com/in/yifei-s",
    ),
  ),
)

#section(
  name: "Research Interest",
)[
  #interests[
    - Distributed systems related formal verifications and program analysis
    - High-performance managed runtime systems
    - Type theory and type based program analysis for modern programming languages
  ]
]

#section(
  name: "Education",
)[
  #education(
    institution: "Northeastern University",
    degree: "M.Sc. in Computer Science",
    attended: "2023/09 - 2025/04",
    location: "Boston, MA, USA",
  )[
    Google CSRMP Fellow, 2023b

    Member of the #link("https://srg.khoury.northeastern.edu")[Systems Research Group],
    Advisor: #link("https://www.jiyongshin.info")[Ji-Yong Shin]
  ]

  #education(
    institution: "University of Tokyo",
    degree: "Visiting Research Student",
    attended: "2024/05 - 2024/09",
    location: "Tokyo, Japan",
  )[
    Member of the #link("https://www.csg.ci.i.u-tokyo.ac.jp/en")[Computing Software Group],
    Advisor: #link("https://tugawa.github.io/index-e.html")[Tomoharu Ugawa]
  ]

  #education(
    institution: "University of Utah",
    degree: "B.Sc. in Computer Science",
    attended: "2019/08 - 2023/05",
    location: "Salt Lake City, UT, USA",
  )[
    Academic Excellence Scholarship, 2019-2023

    Thesis: #link(
      "https://ysun.co/pdfs/bachelors-thesis.pdf",
    )[System and Methods to Determine ME/CFS & Long COVID Disease Severity Using
      Wearable Sensor & Survey Data]

    Member of the #link("https://iss.mech.utah.edu")[Integrated Self-Powered Sensing Lab],
    Advisor: #link("https://iss.mech.utah.edu/shad-roundy")[Shad Roundy],
    Co-advisor: #link("https://robot-learning.cs.utah.edu/thermans")[Tucker Hermans]
  ]
]

#section(
  name: "Employment",
)[
  #employment(
    position: "Teaching Assistant",
    company: "Northeastern University",
    worked: "2024/01 - 2024/05",
  )[
    - #link("https://3700.network/docs/syllabus")[CS 3700]: Networks and Distributed
      Systems
    - Topics include routing, congestion control, DNS, network security, and
      applications such as distributed KV stores, P2P and CDN
  ]

  #employment(
    position: "Research Assistant",
    company: "University of Utah",
    worked: "2021/08 - 2023/05",
  )[
    - Joint research project in collaboration with the Bateman Horne Center's clinical
      research team, developed and managed a new data collection infrastructure
    - The infrastructure aggregats 100+ IMUs, multiple single-board computers and
      high-performance servers, collected terabyte-level motion data, then applied
      sensor fusion, motion analysis, and machine learning techniques on collected
      time-series and survey data
  ]

  #employment(
    position: "System Administrator",
    company: "University of Utah",
    worked: "2019/12 - 2020/09",
  )[
    - Enterprise system administration, managed 1000+ university-owned
      iOS/iPadOS/macOS/tvOS, Windows, and Linux systems
    - Created multiple automation tools to perform unattended on-boarding,
      off-boarding, package licensing, updates, and distributions
  ]

  #employment(
    position: "Intern",
    company: "DJI",
    worked: "2018/07 - 2018/08",
  )[
    - Competitive robotic system design/modeling, embedded system programming, control
      system programming, and computer vision
    - Champion of the 2018 DJI RoboMaster Summer Camp
  ]
]

#section(
  name: "Project",
)[
#project(
  name: "AS10779",
  display: "as10779.net",
  url: "https://as10779.net",
)[
- Operator of AS10779, #link("https://rdap.arin.net/registry/ip/23.161.104.0")[`23.161.104.0/24`] and #link(
    "https://rdap.arin.net/registry/ip/2620:be:a000::",
  )[`2620:BE:A000::/48`]
]

#project(
  name: "Consistency",
  display: "github.com/stepbrobd/consistency",
  url: "https://github.com/stepbrobd/consistency-z3",
)[
  - A verification tool for testing the compositional consistency guarantees of
    distributed systems
]

#project(
  name: "Finch",
  display: "github.com/stepbrobd/finch",
  url: "https://github.com/stepbrobd/finch",
)[
  - A genetic algorithm framework and visualizer written in Go
]

#project(
  name: "SRD",
  display: "github.com/stepbrobd/srd",
  url: "https://github.com/stepbrobd/srd",
)[
  - Go static date race checking with stateful AST traversal based on structural
    operational semantics
]
]

#section(name: "Publication")[
  #publications(path: "list.yml", bold: "Y. Sun")
]
