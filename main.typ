#let cv(address: none, contact: none, links: none, body) = [
  #set document(author: contact.name, title: contact.name)
  #set text(font: "New Computer Modern", lang: "en", size: 10pt)

  #show link: underline

  #set page(
    paper: "us-letter", margin: (x: 1in, y: 1in), header: context{
      if here().page() == 1 {
        h(1fr)
        text(
          gray,
        )[#datetime.today().display("[month repr:short]. [day padding:none], [year]")]
      } else {
        h(1fr)
        text(gray)[#contact.name]
      }
    }, footer: context{
      h(1fr)
      text(gray)[#counter(page).display("1/1", both: true)]
    },
  )

  #align(
    center,
  )[
    #block(heading(level: 1, upper(contact.name)))
    #block(text[#address])
    #block(
      text[
        #link("mailto:" + contact.email)[#contact.email] #h(10%) #link("tel:" + contact.phone.replace(" ", ""))[#contact.phone]
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

#let education(institution: none, degree: none, attended: none, location: none, body) = [
  #heading(level: 3, [#institution #h(1fr) #degree])
  #text(attended + h(1fr) + location)

  #body
]

#let employment(position: none, company: none, worked: none, body) = [
  #heading(
    level: 3, [#position, #company #h(1fr) #text(size: 10pt, weight: "regular", worked)],
  )

  #body
]

#let project(name: none, display: none, url: none, body) = [
  #heading(
    level: 3, [#name #h(1fr) #link(url)[#text(size: 10pt, weight: "regular", display)]],
  )

  #body
]

#let publications(path: none, bold: none) = [
  #show bold: name => text(weight: "bold", name)
  #bibliography(title: none, style: "ieee", full: true, path)
]

#show: cv.with(
  contact: (
    name: "Yifei Sun", phone: "+33 6 95 25 04 90", email: "ysun@hey.com", orcid: "0000-0002-1591-7458",
  ), address: (
    "Bâtiment IMAG, Université Grenoble Alpes, CS 40700, 38058 Grenoble Cedex 9, France"
  ), links: (
    (display: "ysun.co", url: "https://ysun.co"), (display: "github.com/stepbrobd", url: "https://github.com/stepbrobd"), (
      display: "linkedin.com/in/yifei-s", url: "https://www.linkedin.com/in/yifei-s",
    ),
  ),
)

#section(
  name: "Education",
)[
  #education(
    institution: "Inria", degree: "Ph.D. in Computer Science", attended: "2025/07 - 2028/07", location: "Saint-Martin-d'Hères, Auvergne-Rhône-Alpes, France",
  )[
    Doctoral researcher at Centre Inria de l'Université Grenoble Alpes, registered
    at ENS de Lyon.

    Member of the #link("https://team.inria.fr/datamove")[DataMove] and #link("https://avalon.ens-lyon.fr")[Avalon] team,
    Advisor: #link("https://datamove.imag.fr/olivier.richard")[Olivier Richard],
    Co-advisor: #link(
      "https://avalon.ens-lyon.fr/~cperez/web/doku.php/start",
    )[Christian Perez].
  ]

  #education(
    institution: "Northeastern University", degree: "M.Sc. in Computer Science", attended: "2023/09 - 2025/04", location: "Boston, MA, USA",
  )[
    Google CSRMP Fellow (2023b). #link(
      "https://www.usenix.org/conference/fast25/call-for-artifacts#:~:text=Yifei%C2%A0Sun%2C%20Northeastern%20University",
    )[FAST '25 Artifact Evaluation Committee] member.

    Member of the #link("https://srg.khoury.northeastern.edu")[Systems Research Group],
    Advisor: #link("https://www.jiyongshin.info")[Ji-Yong Shin].
  ]

  #education(
    institution: "University of Utah", degree: "B.Sc. in Computer Science", attended: "2019/08 - 2023/05", location: "Salt Lake City, UT, USA",
  )[
    Academic Excellence Scholarship (2019-2023).

    Member of the #link("https://iss.mech.utah.edu")[Integrated Self-Powered Sensing Lab],
    Advisor: #link("https://iss.mech.utah.edu/shad-roundy")[Shad Roundy],
    Co-advisor: #link("https://robot-learning.cs.utah.edu/thermans")[Tucker Hermans].
  ]
]

#section(
  name: "Employment",
)[
  #employment(
    position: "Research Intern", company: "University of Tokyo", worked: "2024/05 - 2024/09",
  )[
    - Advised under #link("https://tugawa.github.io/index-e.html")[Tomoharu Ugawa] at
      the #link("https://www.csg.ci.i.u-tokyo.ac.jp/en")[Computing Software Group],
      created a framework to apply genetic algorithm with multiple built-in libraries
      to improve bytecode handler performance in interpreters (e.g. eJSVM, Ruby, Lua).
    - Improved and reproduced the method proposed in #link(
        "https://dl.acm.org/doi/abs/10.1145/3555776.3577712",
      )[Huang et al. SAC '23], making the framework implementation/interpreter
      agnostic. Initial evaluation showed \~7.5% performance improvement on both eJSVM
      and Ruby.
  ]

  #employment(
    position: "Contractor", company: "NixOS Foundation", worked: "2024/05 - 2024/07",
  )[
    - Member of NixOS Foundation SoN 2024 #link("https://github.com/ngi-nix/ngipkgs")[NGIpkgs] Working
      Group sponsored by NLnet Foundation. Worked on various systemd and D-Bus related
      configurations, and networking infrastructure improvements and troubleshooting.
    - Developed various NixOS modules and integration tests for NLnet sponsored
      projects with Python and QEMU with complex virtualized networking setups.
      Upstreamed automated Python binding generator for 150+ tree-sitter grammars.
  ]

  #employment(
    position: "Teaching Assistant", company: "Northeastern University", worked: "2024/01 - 2024/05",
  )[
    - Graduate TA for #link(
        "https://3700.network/docs/syllabus",
      )[CS 3700 - Networks and Distributed Systems] (\~200 enrolled students):
      Responsible for hosting office hours, course infrastructure setup/maintenance
      (autograder setup and debugging), and grading assignments.
    - Topics including routing, congestion control, network security, and distributed
      protocols like NTP and Raft, and general asynchronous network programming with
      Python, Haskell, and Go.
  ]

  #employment(
    position: "Research Assistant", company: "University of Utah", worked: "2021/08 - 2023/05",
  )[
    - Joint research project in collaboration with the Bateman Horne Center's clinical
      research team, developed and managed a new data collection infrastructure,
      bringing the overall data collection error rate down to sub 0.25%.
    - The infrastructure aggregats 100+ IMUs, multiple single-board computers and
      high-performance servers, collected terabyte-level motion data, then applied
      sensor fusion, motion analysis, and machine learning techniques on collected
      time-series and survey data.
  ]

  #employment(
    position: "System Administrator", company: "University of Utah", worked: "2019/12 - 2020/09",
  )[
    - Enterprise system administration, managed 1000+ university-owned
      iOS/iPadOS/macOS/tvOS, Windows, and Linux systems.
    - Created multiple automation tools to perform multi-platform unattended
      on-boarding, off-boarding, software licensing, upgrades, and distributions.
  ]

  #employment(
    position: "Intern", company: "DJI", worked: "2018/07 - 2018/08",
  )[
    - Champion of the 2018 DJI RoboMaster Summer Camp Competition.
    - Competitive robotic system design/modeling, embedded system programming, control
      system programming, and computer vision, led two teams of 5 to design and build
      a STM32F4 based robotic system to perform predefined tasks.
  ]
]

#section(
  name: "Projects",
)[
#project(
  name: "AS10779", display: "peeringdb.com/asn/10779", url: "https://www.peeringdb.com/asn/10779",
)[
- Operator of AS10779, #link("https://search.arin.net/rdap/?query=23.161.104.0")[`23.161.104.0/24`], #link(
    "https://portal.ampr.org/qr4/a589a015-1713-4ecd-bf49-33d58a9284ea",
  )[`44.32.189.0/24`], and #link(
    "https://search.arin.net/rdap/?query=2620:be:a000::",
  )[`2620:BE:A000::/48`]
- Research network, tunneled peering with VxLAN and/or WireGuard, author of #link("https://github.com/stepbrobd/router")[NixOS Router module].
]

#project(
  name: "Consistency", display: "github.com/stepbrobd/consistency", url: "https://github.com/stepbrobd/consistency-z3",
)[
  - A verification tool for testing the compositional consistency guarantees of
    distributed systems.
  - Z3 based verification tool to axiomatically check the compositions of multiple
    weak consistency semantics and the final semantics' theoretical consistency
    guarantees and safety properties.
]

#project(
  name: "SRD", display: "github.com/stepbrobd/srd", url: "https://github.com/stepbrobd/srd",
)[
  - Proof of concept Go static race checker based on extracting structural
    operational semantics rules and applying the rule sets to perform static race
    detection.
  - As a static race checker, false positives/negatives are expected. The detection
    is done by a stateful traversal of provided Go source file's abstract syntax
    tree.
]
]

#section(
  name: "Skills",
)[
  - *Programming Languages*: Nix, Go, Python, OCaml, Haskell, C, JS/TS, Coq, Lean,
    Typst, LaTeX.
  - *Tools*: Git/JJ, NixOS, Docker/K8S, Bird, SMT-LIB/CVC5/Z3, Matplotlib, TikZ.
  - *Languages*: English (native), Mandarin (native), Japanese (intermediate),
    French (beginner).
]

#section(
  name: "Publications",
)[
  #set enum(numbering: "[1]")
  // #publications(path: "list.yml", bold: "Y. Sun")

  + *Y. Sun*, "System and Methods to Determine ME/CFS & Long COVID Disease Severity
    Using Wearable Sensor & Survey Data", Bachelor's Thesis, University of Utah,
    May. 2023.

  + *Y. Sun*, S. D. Vernon, and S. Roundy, "System and Method to Determine ME/CFS
    and Long COVID Disease Severity Using a Wearable Sensor". International Journal
    of Medical Informatics, Under Review. Jun. 2024.
    https://arxiv.org/abs/2404.04345.
]
