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
    (display: "sdf.org/~ysun", url:"https://sdf.org/~ysun"),
    (display: "sdf.org/~ysun/github", url: "https://sdf.org/~ysun/github"),
    (display: "sdf.org/~ysun/linkedin", url: "https://sdf.org/~ysun/linkedin"),
  ),
)

#section(name: "Research Interests")[
  #interests()[
    + Formal verification, type theory, especially type based program analysis for modern programming languages.
    + Distributed systems, database systems, modern programming languages, and concurrent data structures related verification and fuzz testing.
    + IMU data feature extraction with machine learning for robotic systems and healthcare applications.
  ]
]

#section(name: "Educations")[
  #education(
    institution: "Northeastern University",
    degree: "M.Sc. in Computer Science",
    attended: "2023/09 - 2024/12",
    location: "Boston, MA, USA",
  )[
    Google CSRMP Fellow, 2023b.

    Attended: PyCon 2023 (Salt Lake City, UT), WWDC 2023 (Cupertino, CA), HackZurich 2023 (Zürich, Switzerland), ARIN 52 (San Diego, CA).
    
    Thesis: TBD.

    Advisor: TBD.
  ]

  #education(
    institution: "University of Utah",
    degree: "B.Sc. in Computer Science",
    attended: "2019/08 - 2023/05",
    location: "Salt Lake City, UT, USA",
  )[
    Academic Excellence Scholarship, 2019-2023.

    Attended: CppCon 2021 (Denver, CO), PyCon 2022 (Salt Lake City, UT), DockerCon 2022 (Palo Alto, CA), HackMIT 2022 (Boston, MA).
    
    Thesis: #link("https://ysun.co/publication/system-and-methods-to-determine-mecfs-and-longcovid-disease-severity-using-wearable-sensor-and-survey-data.pdf")["System and Methods to Determine ME/CFS & Long COVID Disease Severity Using Wearable Sensor & Survey Data"].

    Advisor: #link("https://iss.mech.utah.edu/shad-roundy")[Shad Roundy]. Co-advisor: #link("https://robot-learning.cs.utah.edu/thermans")[Tucker Hermans].
  ]
]

#section(name: "Employments")[
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

#section(name: "Projects")[
  #project(
    name: "AS10779",
    display: "as10779.net",
    url: "https://as10779.net",
  )[
    - Operator of AS10779, managing #link("https://rdap.arin.net/registry/ip/23.161.104.0")[`23.161.104.0/24`] and #link("https://rdap.arin.net/registry/ip/2620:be:a000::")[`2620:BE:A000::/48`], one other IPv4 /24 block pending assignment from RIR (ARIN).
    - Research network, 10 Gbps uplink, tunneled downlink (Tailscale, WireGuard), more information available at #link("https://bgp.he.net/as10779")[Hurricane Electric BGP Toolkit].
  ]

  #project(
    name: "Nix and NixPkgs",
    display: "github.com/nixos/{nix,nixpkgs}",
    url: "https://github.com/nixos",
  )[
    - Cross-platform purely functional package manager focused on reproducible environment. NixPkgs maintainer, Darwin maintainer. Maintains 10+ packages, 25+ merged PR, 10+ reviewed PR.
    - Aside from contributions to Nix, also added Nix support and NixPkgs Overlays to multiple other repos/packages: #link("https://github.com/crunchy-labs/crunchy-cli")[`crunchy-cli`], #link("https://github.com/mbientlab/metawear-sdk-python")[`metawear`], #link("https://github.com/stepbrobd/osu-overlay")[`osu-lazer`], #link("https://github.com/stepbrobd/raycast-overlay")[`raycast`], #link("https://github.com/mbientlab/pywarble")[`warble`], etc.
  ]

  #project(
    name: "SRD",
    display: "github.com/stepbrobd/srd",
    url: "https://github.com/stepbrobd/srd",
  )[
    - Proof of concept Go static race checker based on extracting structural operational semantics rules and applying the rule sets to perform static race detection.
    - As a static race checker, false positives are expected. The detection is done by a stateful traversal of provided Go source file's abstract syntax tree.
  ]

  #project(
    name: "MetaProcessor",
    display: "metaprocessor.org",
    url: "https://metaprocessor.org",
  )[
    - Author and maintainer of the data collection system used at the #link("https://batemanhornecenter.org")[Bateman Horne Center], a non-profit research center focusing on the diagnosis and treatment of myalgic encephalomyelitis/chronic fatigue syndrome (ME/CFS), fibromyalgia (FM), and other related comorbidities.
    - Data collection pipeline developed for MbientLab MetaMotion series IMUs. Collected and processed terabytes of IMU data in multiple joint research projects between University of Utah #link("https://iss.mech.utah.edu")[ISS Lab] and  #link("https://batemanhornecenter.org")[Bateman Horne Center] (other ongoing projects are still using MetaProcessor).
  ]
]

#section(name: "Publications")[
  #publications(
    path: "list.yml",
    bold: "Y. Sun",
  )
]
