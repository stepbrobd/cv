#let cv(address: none, contact: none, links: none, body) = [
  #set document(author: contact.name, title: contact.name)
  #set text(font: "New Computer Modern", lang: "en", size: 10pt)

  #show link: it => underline(stroke: 0.3pt + luma(75%), offset: 1.5pt, it)

  #show heading.where(level: 1): set text(size: 18pt)
  #show heading.where(level: 2): set text(size: 12pt, weight: "bold")
  #show heading.where(level: 2): set block(above: 1em, below: 0.2em)
  #show heading.where(level: 3): set text(size: 10pt, weight: "semibold")

  #set list(tight: true, spacing: 0.4em)
  #set enum(tight: true, spacing: 0.6em)

  #set page(
    paper: "us-letter",
    margin: 1in,
    header: context {
      if here().page() == 1 {
        h(1fr)
        text[#(
          datetime
            .today()
            .display("[month repr:short]. [day padding:none], [year]")
        )]
      } else {
        h(1fr)
        text[#contact.name]
      }
    },
    footer: context {
      h(1fr)
      text[#counter(page).display("1/1", both: true)]
    },
  )

  #align(
    center,
  )[
    #block(heading(level: 1, [#smallcaps(contact.name) #h(0.3em) #link(
        "https://orcid.org/" + contact.orcid,
      )[#box(height: 0.7em, image("orcid.svg"))]]))

    #block(text[#address])
    #block(
      text[
        #link("mailto:" + contact.email)[#contact.email] #h(10%) #link(
          "tel:" + contact.phone.replace(" ", ""),
        )[#contact.phone]
      ],
    )
    #grid(
      for i in range(links.len()) {
        link(links.at(i).url)[#links.at(i).display] + h(10%)
      }
        + h(-10%),
    )
  ]

  #body
]

#let section(name: none, body) = [
  #heading(level: 2, smallcaps(name))
  #line(length: 100%, stroke: 0.5pt)

  #body
]

#let education(
  institution: none,
  degree: none,
  attended: none,
  location: none,
  body,
) = [
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

#let publications(path: none, bold: none) = [
  #show bold: name => text(weight: "bold", name)
  #bibliography(
    title: none,
    style: "acm.csl",
    full: true,
    path,
  )
]

#show: cv.with(
  contact: (
    name: "Yifei Sun",
    phone: "+33 6 95 25 04 90",
    email: "ysun@hey.com",
    orcid: "0000-0002-1591-7458",
  ),
  address: (
    "Bureau 431, Bâtiment IMAG, Université Grenoble Alpes, CS 40700, 38058 Grenoble Cedex 9, France"
  ),
  links: (
    (display: "ysun.co", url: "https://ysun.co"),
    (display: "github.com/stepbrobd", url: "https://github.com/stepbrobd"),
    (
      display: "linkedin.com/in/yifei-s",
      url: "https://www.linkedin.com/in/yifei-s",
    ),
  ),
)

#section(
  name: "Interests",
)[
  Reproducible HPC infrastructure, programmable networking (eBPF/XDP), formal verification of distributed systems, constructive type theory
]

#section(
  name: "Education",
)[
  #education(
    institution: "ENS de Lyon",
    degree: "Ph.D. in Computer Science",
    attended: "2025/07 - 2028/07 (Expected)",
    location: "Lyon, Auvergne-Rhône-Alpes, France",
  )[
    LIG #link("https://team.inria.fr/datamove")[DataMove] team, LIP #link("https://avalon.ens-lyon.fr")[Avalon] team,
    Advisor: #link("https://datamove.imag.fr/olivier.richard")[Olivier Richard],
    Co-advisor: #link("https://avalon.ens-lyon.fr/~cperez/web/doku.php/start")[Christian Perez]
  ]

  #education(
    institution: "University of Tokyo",
    degree: "Visiting Researcher",
    attended: "2024/05 - 2024/09",
    location: "Bunkyo-ku, Tokyo, Japan",
  )[
    #link("https://www.csg.ci.i.u-tokyo.ac.jp/en")[Computing Software Group],
    Advisor: #link("https://tugawa.github.io/index-e.html")[Tomoharu Ugawa]
  ]

  #education(
    institution: "Northeastern University",
    degree: "M.Sc. in Computer Science",
    attended: "2023/09 - 2025/04",
    location: "Boston, MA, USA",
  )[
    #link("https://srg.khoury.northeastern.edu")[Systems Research Group],
    Advisor: #link("https://www.jiyongshin.info")[Ji-Yong Shin]
  ]

  #education(
    institution: "University of Utah",
    degree: "B.Sc. in Computer Science",
    attended: "2019/08 - 2023/05",
    location: "Salt Lake City, UT, USA",
  )[
    #link("https://iss.mech.utah.edu")[Integrated Self-Powered Sensing Lab],
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
    - Hosted office hours and maintained autograder for CS 3700 (Net. and Dist. Sys.) (\~200 students)
    - Managed course infrastructure covering routing, congestion control, and distributed protocols
  ]

  #employment(
    position: "Research Assistant",
    company: "University of Utah",
    worked: "2021/08 - 2023/05",
  )[
    - Built data collection infrastructure for the Bateman Horne Center
    - Collected and analyzed terabyte-level motion data using sensor fusion and ML techniques
  ]

  #employment(
    position: "System Administrator",
    company: "University of Utah",
    worked: "2019/12 - 2020/09",
  )[
    - Managed 1000+ university-owned devices across iOS, macOS, Windows, and Linux
    - Built automation tools for multi-platform onboarding, licensing, and software distribution
  ]

  #employment(
    position: "Intern",
    company: "DJI",
    worked: "2018/07 - 2018/08",
  )[
    - Champion of 2018 DJI RoboMaster Championship
    - Led 2 teams of 5 to design and program STM32F4-based robots (control systems, computer vision)
  ]
]

#section(
  name: "Talks",
)[
  - #link("https://fosdem.org/2026/schedule/event/FE7BWX-ebpf_with_nix_laptop_to_testbed/")[eBPF with Nix: Laptop to Testbed], FOSDEM '26, Brussels, Belgium
  - #link("https://talks.nixcon.org/nixcon-2025/talk/7YWTUC/")[Internet Scale Routing with NixOS], NixCon '25, Zurich, Switzerland
]

#pagebreak()

#section(
  name: "Awards",
)[
  - NetActuate sponsorship, VMs, transit (2026)
  - Oxide Computer, Silo access, compute (2026)
  - Fastly sponsorship, service credit (2026)
  - Garnix sponsorship, 30k min/mo build (2025)
  - Cloudflare sponsorship, Enterprise plan (2025)
  - Google CSRMP Fellow (2023b)
  - Academic Excellence Scholarship, University of Utah (2019-2023)
]

#section(
  name: "Services",
)[
  - Grenoble Nix User Group organizer
  - #link("https://www.usenix.org/conference/fast25/call-for-artifacts#:~:text=Yifei%C2%A0Sun%2C%20Northeastern%20University")[FAST '25 Artifact Evaluation Committee] member
  - Nixpkgs committer
  - #link("https://github.com/ngi-nix/ngipkgs")[NGIpkgs] Working Group, NixOS Foundation SoN 2024 (NLnet)
  - #link("https://www.peeringdb.com/asn/10779")[AS10779] / #link("https://www.peeringdb.com/asn/18932")[AS18932] operator
  - #link("https://www.ntppool.org/a/ysun")[NTP Pool] public time server operator
]

#section(
  name: "Publications",
)[
  #publications(path: "list.yaml", bold: "Sun, Y.")
]
