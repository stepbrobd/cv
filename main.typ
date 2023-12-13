#import "cv.typ": *

#show: cv.with(
  contact: (
    name: "Yifei Sun",
    phone: "+18014338213",
    email: "ysun@sdf.org",
    orcid: "0000-0002-1591-7458",
  ),
  address: (
    line1: "3055 NW Yeon Ave",
    line2: "PMB 712",
    city: "Portland",
    state: "OR",
    zip: "97210",
  ),
  links: (
    (display: "sdf.org/~ysun", url: "https://sdf.org/~ysun"),
    (display: "sdf.org/~ysun/github", url: "https://sdf.org/~ysun/github"),
    (
      display: "sdf.org/~ysun/linkedin",
      url: "https://sdf.org/~ysun/linkedin",
    ),
  ),
)

#section(
  name: "Research Interests",
)[
  #interests(
    )[
    - Type theory and type based program analysis for modern programming languages
    - Distributed systems and consistency model verification
  ]
]

#section(
  name: "Educations",
)[
  #education(
    institution: "Northeastern University",
    degree: "M.Sc. in Computer Science",
    attended: "2023/09 - 2024/12",
    location: "Boston, MA, USA",
  )[
    Google CSRMP Fellow, 2023b

    Attended: PyCon 2023 (Salt Lake City, UT), WWDC 2023 (Cupertino, CA), HackZurich
    2023 (Zürich, Switzerland)

    // Thesis: TBD

    // Advisor: TBD
  ]

  #education(
    institution: "University of Utah",
    degree: "B.Sc. in Computer Science",
    attended: "2019/08 - 2023/05",
    location: "Salt Lake City, UT, USA",
  )[
    Academic Excellence Scholarship, 2019-2023

    Attended: CppCon 2021 (Denver, CO), PyCon 2022 (Salt Lake City, UT), HackMIT
    2022 (Boston, MA)

    Thesis: #link(
      "https://ysun.co/pdfs/bachelors-thesis.pdf",
    )[System and Methods to Determine ME/CFS & Long COVID Disease Severity Using
      Wearable Sensor & Survey Data]

    Advisor: #link("https://iss.mech.utah.edu/shad-roundy")[Shad Roundy], #link("https://robot-learning.cs.utah.edu/thermans")[Tucker Hermans]
  ]
]

#section(
  name: "Employments",
)[
  // #employment(
  //   position: "Teaching Assistant",
  //   company: "Northeastern University",
  //   worked: "2024/01 - 2024/05",
  // )[
  //   -
  //   -
  // ]

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
    - Utilized STM32F4 platform to build out a robotic system with wireless image
      transmission, image recognition, automated reasoning, and task scheduling
      capabilities, followed predefined rule sets to complete tasks
  ]
]

#section(
  name: "Projects",
)[
#project(
  name: "AS10779",
  display: "as10779.net",
  url: "https://as10779.net",
)[
- Operator of AS10779, managing #link("https://rdap.arin.net/registry/ip/23.161.104.0")[`23.161.104.0/24`] and #link(
    "https://rdap.arin.net/registry/ip/2620:be:a000::",
  )[`2620:BE:A000::/48`]
- Research network, 1 Gbps uplink, tunneled downlink (Tailscale, WireGuard)
]

#project(
  name: "Finch",
  display: "github.com/stepbrobd/finch",
  url: "https://github.com/stepbrobd/finch",
)[
  - A neural net framework/visualizer written in Go
  - The framework uses genetic algorithm to mutate weights to achieve desired
    results
]

#project(
  name: "Nix and Nixpkgs",
  display: "github.com/nixos/{nix,nixpkgs}",
  url: "https://github.com/nixos",
)[
- Nixpkgs maintainer, Darwin maintainer, maintains 10+ packages, 40+ merged PR,
  20+ reviewed PR
- Added Nix support: #link("https://github.com/crunchy-labs/crunchy-cli")[`crunchy-cli`], #link("https://github.com/stepbrobd/deno2nix")[`deno2nix`], #link("https://github.com/mbientlab/metawear-sdk-python")[`metawear`], #link("https://github.com/mbientlab/pywarble")[`warble`], #link(
    "https://github.com/NixOS/nixpkgs/blob/master/pkgs/tools/wayland/xwaylandvideobridge/default.nix",
  )[`xwaylandvideobridge`], #link(
    "https://github.com/stepbrobd/nixpkgs/blob/master/pkgs/applications/science/logic/z3/default.nix",
  )[`z3-solver`]
]

#project(
  name: "SRD",
  display: "github.com/stepbrobd/srd",
  url: "https://github.com/stepbrobd/srd",
)[
  - Proof of concept Go static race checker based on predefined structural
    operational semantics rules
  - Applies rule sets when performing stateful AST traversal to achieve static race
    detection
]
]

#section(name: "Publications")[
  #publications(path: "list.yml", bold: "Y. Sun")
]
