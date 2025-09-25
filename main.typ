#import "@preview/basic-resume:0.2.8": *
#let lang = if "lang" in sys.inputs { sys.inputs.lang } else { "fr" }
#let fren(fr, en) = if lang == "fr" { fr } else { en }

#let name = "Aleksei Kotliarov"
#let location = "Versailles, France"
#let email = "alekseikotliarov@gmail.com"
#let github = "github.com/al-kot"
#let linkedin = "linkedin.com/in/al-kot"
#let phone = "+33 6 18 20 43 42"
#let personal-site = "stuxf.dev"

#set block(spacing: if lang == "fr" { 0.7em } else { 1.3em })

#show: resume.with(
  author: name,
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  // personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

== #fren([Formation], [Education])

#edu(
  institution: "EPITA",
  location: "Le Kremlin-Bicêtre, France",
  dates: dates-helper(start-date: "Sept 2021", end-date: fren(
    "Présent",
    "Present",
  )),
  degree: fren(
    "Diplôme d’ingénieur en informatique",
    "Engineering degree (Master’s level) in Computer Science",
  ),
  consistent: true,
)
#fren(
  [
    - Section anglophone

    - Majeur: SCIA --- IA & Data Science
  ],
  [
    - English-speaking section

    - Major: SCIA --- AI & Data Science
  ],
)

#edu(
  institution: "Lycée International de St. Germain-en-Laye",
  location: "St. Germain-en-Laye, France",
  dates: fren(
    dates-helper(start-date: "Sept 2019", end-date: "Juin 2021"),
    dates-helper(start-date: "Sept 2019", end-date: "June 2021"),
  ),
  degree: fren(
    "Baccalauréat general, Spé Math / NSI",
    "French Baccalauréat, specialization in Mathematics and Computer Science",
  ),
  consistent: true,
)
#fren(
  [
    - Mention Très Bien
  ],
  [
    - Graduated with Highest Honors (Mention Très Bien)
  ],
)

== #fren([Expériences professionnelles], [Work Experience])

#work(
  title: fren(
    "ACU (Assistant C Unix) - Assistant pédagogique",
    "ACU (Assistant C Unix) - Teaching assistant",
  ),
  location: "Le Kremlin-Bicêtre, France",
  company: "EPITA",
  dates: dates-helper(start-date: "Sept 2025", end-date: "Jan 2026"),
)
#fren(
  [
    - Enseigné aux étudiants de première année en école d’ingénieurs les
      fondamentaux de la programmation en C, Python et SQL

    - Encadré 400 étudiants pendant les travaux dirigés et permanences

    - Participé au maintient et aux crashtests des exercices et projets
  ],
  [
    - Taught first year engineering students the fundamentals of programming with
      C, Python and SQL

    - Supervised 400 students during tutorials and permanences

    - Contributed to the maintenance and crashtests of exercises and projects
  ],
)

#work(
  title: fren("Stagiaire Développeur Fullstack", "Fullstack Developer Intern"),
  location: "Paris, France",
  company: "Chargeguru & Zeplug",
  dates: fren(
    dates-helper(start-date: "Août 2024", end-date: "Jan 2025"),
    dates-helper(start-date: "Aug 2024", end-date: "Jan 2025"),
  ),
)
#fren(
  [
    - Conçu et personnalisé des applications Salesforce pour automatiser les
      processus métiers et accroître la productivité des équipes

    - Optimisé la pipeline CI/CD sur GitHub en restructurant l’architecture des
      workflows et en améliorant la lisibilité des logs de déploiement

    - Contribué au développement frontend d’un portail client de nouvelle
      génération

    - Appliqué les pratiques de développement Agile au sein de l’équipe
  ],
  [
    - Designed and customized Salesforce applications to automate business
      workflows and boost team productivity

    - Optimized GitHub CI/CD pipelines by restructuring workflow architecture and
      enhancing deployment log readability

    - Contributed to frontend development of a next-generation client portal

    - Applied Agile software development practices within a cross-functional team
  ],
)

== #fren([Projets], [Projects])

#project(
  name: "typst-preview.nvim",
)
#fren(
  [
    - Extension open source pour Neovim permettant l’aperçu en temps réel de
      documents Typst

    - Rendu d’images directement dans un terminal
  ],
  [
    - Open-source Neovim extension that enables real-time preview of Typst
      documents

    - Image rendering directly inside a terminal
  ],
)


#project(
  name: fren(
    "Projet de fin d’études avec Aiba",
    "Final year project with Aiba",
  ),
)
#fren(
  [
    - Proposer un modèle capable de générer des représentations pertinentes des
      utilisateurs à partir de leur comportement de communication

    - Développer des méthodes de détection des utilisateurs bannis tentant de réintégrer la
      une plateforme
  ],
  [
    - Propose a model that will be able to generate meaningful user
      representation based on communication behaviour

    - Identify returning users attempting to rejoin a platform after a ban
  ],
)

#project(
  name: fren("Autres Projets Académiques", "Other Academic Projects"),
)
#fren(
  [
    - Un système de recommandation personnalisée de vidéos courtes basé sur le
      jeu de données KuaiRec et utilisant un autoencodeur variationnel

    - Un réseau de neurones convolutifs pour la classification d’images de
      différents types de navires

    - Un modèle de segmentation client afin d’identifier les profils
      bancaires et d’évaluer les risques potentiels basé sur le comportement
      financiers
  ],
  [
    - Personalized short video recommender system using the KuaiRec dataset
      based on a variational autoencoder

    - Convolutional neural network for image classification of different types of
      ships

    - ML-based segmentation for banking clients to identify customer profiles and
      potential risks based on financial behaviour
  ],
)

== #fren([Compétences], [Skills])
- *#fren([Langages de Programmation], [Programming Languages])*: Python, C/C++,
  Lua, Go, JS/TS, HTML/CSS, Java, Bash, R, Apex, Rust

- *Technologies*: Git, Tensorflow, Keras, Torch, Docker, Kubernetes, NextJs, GitHub/GitLab CI/CD, SalesForce

#fren(
  [
    - *Langues*: Français, Anglais (TOEIC 980), Russe
  ],
  [
    - *Languages*: French, English (TOEIC 980), Russian
  ],
)
