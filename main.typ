#import "document.typ": *

#show: cv.with(
  show_contact: true,
  show_address: true,
  show_links: true,
  
  contact: (
    name: "Yifei Sun",
    phone: "+1 (801) 433-8213",
    email: "hi@yifei-s.com",
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
    (display: "yifei-s.com", url:"https://yifei-s.com"),
    (display: "github.com/yifei-s", url: "https://github.com/stepbrobd"),
    (display: "linkedin.com/in/yifei-s", url: "https://www.linkedin.com/in/yifei-s")
  ),
)

#section(name: "Research Interests")[
  #interests()[
    + Formal verification for distributed systems and database systems.
    + Programming language and concurrent data structure related formal verification and fuzz testing.
    + IMU data feature extraction and machine learning for robotic systems and healthcare applications.
  ]
]

#section(name: "Education")[
  #education(
    institution: "Northeastern University",
    degree: "M.Sc. in Computer Science",
    attended: "2023/09 - 2024/12",
    location: "Boston, MA, USA",
  )[
    Attended: PyCon 2023 (Salt Lake City, UT), WWDC 2023 (Cupertino, CA).
    
    Thesis: TBD.
    Advisor: TBD.
  ]

  #education(
    institution: "University of Utah",
    degree: "B.Sc. in Computer Science",
    attended: "2019/08 - 2023/05",
    location: "Salt Lake City, UT, USA",
  )[
    Attended: CppCon 2021 (Denver, CO), PyCon 2022 (Salt Lake City, UT), DockerCon 2022 (Palo Alto, CA), HackMIT 2022 (Boston, MA).
    
    Thesis: #link("https://ccs.neu.edu/~ysun/publications/system-and-methods-to-determine-mecfs-and-longcovid-disease-severity-using-wearable-sensor-and-survey-data.pdf")["System and Methods to Determine ME/CFS & Long COVID Disease Severity Using Wearable Sensor & Survey Data"].
    Advisor: #link("https://iss.mech.utah.edu/shad-roundy")[Shad Roundy]. Co-advisor: #link("https://robot-learning.cs.utah.edu/thermans")[Tucker Hermans].
  ]
]

#section(name: "Employment")[
  #employment(
    position: "Research Assistant",
    company: "University of Utah",
    worked: "2021/08 - 2023/05"
  )[
    - Joint research project, PI: Suzanne Vernon, advisor: Shad Roundy, co-adviser: Tucker Hermans. In collaboration with the Bateman Horne Center's clinical research team, we developed and managed a new data collection infrastructure.
    - The infrastructure is built on 5000+ lines of Nix, Python, Go and C++, aggregating 100+ IMUs, 20+ single-board computers, and 3+ high-performance servers. We collected terabyte-level motion data, and applied sensor fusion, motion analysis, and machine learning techniques on collected time-series data and survey data. We are planning to use our research outcome to propose to medical regulators as possible standardized diagnostic procedures and severity categorization methods for ME/CFS, Long COVID, and other related medical syndromes.
  ]

  #employment(
    position: "System Administrator",
    company: "University of Utah",
    worked: "2019/12 - 2020/09"
  )[
    - Enterprise system administration, managed 1000+ university-owned Apple devices (Macs, iPads, Apple TVs, etc.).
    - Utilized Jamf Pro, Radmind, and Apple School Manager to perform day-to-day MDM tasks. Created multiple automation tools to perform unattended on-boarding, off-boarding, package licensing, updates, and distributions.
  ]

  #employment(
    position: "Intern",
    company: "DJI",
    worked: "2018/07 - 2018/08"
  )[
    - Competitive robotic system design/modeling, embedded system programming, control system programming, and computer vision. Developed path planning and task scheduling algorithms for predefined workflow.
    - Utilized STM32F4 platform to build out a robotic system with wireless image transmission, image recognition, automated reasoning, and task scheduling capabilities, following predefined rule sets to complete tasks.
  ]
]

#section(name: "OSS Contributions")[
  #contribution(
    project: "MetaProcessor",
    display: "github.com/metaprocessor/metaprocessor",
    url: "https://github.com/metaprocessor/metaprocessor",
  )[
    - Contributor, code owner. Package published to PyPI.
    - Data collection pipeline developed for MbientLab MetaMotion series IMUs. Collected terabyte-level IMU data in a joint research project in collaboration with the Bateman Horne Center.
  ]

  #contribution(
    project: "Nix",
    display: "github.com/nixos/nix",
    url: "https://github.com/nixos/nix",
  )[
    - Cross-platform purely functional package manager focused on reproducible environment.
    - Aside from contributions to Nix, also added Nix support and NixPkgs Overlays to multiple other repos/packages: #link("https://github.com/stepbrobd/raycast-overlay")[`raycast`], #link("https://github.com/stepbrobd/osu-overlay")[`osu-lazer`], #link("https://github.com/crunchy-labs/crunchy-cli")[`crunchy-cli`], etc.
  ]

  #contribution(
    project: "NixPkgs",
    display: "github.com/nixos/nixpkgs",
    url: "https://github.com/nixos/nixpkgs",
  )[
    - Nix packages collection, 5000+ commits per month.
    - NixPkgs maintainer, Darwin maintainer. Maintains multiple packages, 10+ merged PR, 10+ reviewed PR.
  ]

  #contribution(
    project: "SRD",
    display: "github.com/stepbrobd/srd",
    url: "https://github.com/stepbrobd/srd",
  )[
    - Proof of concept Go static race checker based on extracting structural operational semantics rules and applying the rule sets to perform static race detection.
    - As a static race checker, false positives are expected. The detection is done by a stateful traversal of provided Go source file's abstract syntax tree.
  ]
]


#section(name: "Publications")[
  #publications(
    path: "publications.bib",
    style: "ieee",
    bold: "Y. Sun",
    keys: (
      "2023-05-01",
      "2023-07-01",
    ),
  )
]
