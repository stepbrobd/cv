#import "cv.typ": *

#show: cv.with(
  contact: (
    name: "Yifei Sun", phone: "+18014338213", email: "ysun@ccs.neu.edu", orcid: "0000-0002-1591-7458",
  ), address: (
    line1: "214 WVH", line2: "440 Huntington Ave", city: "Boston", state: "MA", zip: "02115",
  ), links: (
    (display: "ccs.neu.edu/~ysun", url: "https://ccs.neu.edu/~ysun"), (display: "github.com/stepbrobd", url: "https://github.com/stepbrobd"), (
      display: "linkedin.com/in/yifei-s", url: "https://www.linkedin.com/in/yifei-s",
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
    institution: "Northeastern University", degree: "M.Sc. in Computer Science", attended: "2023/09 - 2025/04", location: "Boston, MA, USA",
  )[
    Google CSRMP Fellow, 2023b

    Member of the #link("https://srg.khoury.northeastern.edu")[Systems Research Group],
    Advisor: #link("https://www.jiyongshin.info")[Ji-Yong Shin]
  ]

  #education(
    institution: "University of Tokyo", degree: "Visiting Research Student", attended: "2024/05 - 2024/09", location: "Tokyo, Japan",
  )[
    NixOS Foundation Summer of Nix NGIpkgs Working Group, 2024

    Member of the #link("https://www.csg.ci.i.u-tokyo.ac.jp/en")[Computing Software Group],
    Advisor: #link("https://tugawa.github.io/index-e.html")[Tomoharu Ugawa]
  ]

  #education(
    institution: "University of Utah", degree: "B.Sc. in Computer Science", attended: "2019/08 - 2023/05", location: "Salt Lake City, UT, USA",
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
    position: "Teaching Assistant", company: "Northeastern University", worked: "2024/01 - 2024/05",
  )[
    - Graduate TA for #link("https://3700.network/docs/syllabus")[CS 3700]: Networks
      and Distributed Systems, responsible for office hours, grading (autograder setup
      and debugging), and lab assignments
    - Topics including routing, congestion control, network security, and distributed
      protocols like NTP and Raft, and general network programming with Python,
      Haskell, and Go
  ]

  #employment(
    position: "Research Assistant", company: "University of Utah", worked: "2021/08 - 2023/05",
  )[
    - Joint research project in collaboration with the Bateman Horne Center's clinical
      research team, developed and managed a new data collection infrastructure
    - The infrastructure aggregats 100+ IMUs, multiple single-board computers and
      high-performance servers, collected terabyte-level motion data, then applied
      sensor fusion, motion analysis, and machine learning techniques on collected
      time-series and survey data
  ]

  #employment(
    position: "System Administrator", company: "University of Utah", worked: "2019/12 - 2020/09",
  )[
    - Enterprise system administration, managed 1000+ university-owned
      iOS/iPadOS/macOS/tvOS, Windows, and Linux systems
    - Created multiple automation tools to perform multi-platform unattended
      on-boarding, off-boarding, package licensing, updates, and distributions
  ]

  #employment(
    position: "Intern", company: "DJI", worked: "2018/07 - 2018/08",
  )[
    - Champion of the 2018 DJI RoboMaster Summer Camp Competition
    - Competitive robotic system design/modeling, embedded system programming, control
      system programming, and computer vision, led two teams of 5 to design and build
      a STM32F4 based robotic system to perform predefined tasks
  ]
]

#section(
  name: "Project",
)[
#project(
  name: "AS10779", display: "ysun.co/10779", url: "https://ysun.co/10779",
)[
- Operator of AS10779, #link("https://rdap.arin.net/registry/ip/23.161.104.0")[`23.161.104.0/24`] and #link(
    "https://rdap.arin.net/registry/ip/2620:be:a000::",
  )[`2620:BE:A000::/48`] (under ARIN)
- Experimental research network, tunneled peering with WireGuard served with NixOS
]

#project(
  name: "Consistency", display: "github.com/stepbrobd/consistency", url: "https://github.com/stepbrobd/consistency-z3",
)[
  - A verification tool for testing the compositional consistency guarantees of
    distributed systems
  - Z3 based verification tool to axiomatically check the compositions of multiple
    weak consistency semantics and the final semantics' theoretical consistency
    guarantees and safety properties
]

#project(
  name: "Finch", display: "github.com/stepbrobd/finch", url: "https://github.com/stepbrobd/finch",
)[
  - A genetic algorithm framework and visualizer written in Go
  - User-definable genetic algorithm configurations, including population size,
    layer size (input, hidden, output), mutation rate, and training/testing data
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

#section(name: "Publication")[
  #publications(path: "list.yml", bold: "Y. Sun")
]
