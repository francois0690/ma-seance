# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "down"





p "cleaning database"
Consultation.destroy_all
Activity.destroy_all
Job.destroy_all
Speciality.destroy_all
Office.destroy_all
User.destroy_all


# Create avatars
# avatar_docteur_male = URI.open("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg")

# avatar_docteur_male = open(URI.escape("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg"))

avatar_docteur_male = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg')

# avatar_docteur_female = URI.open("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")

# p avatar_docteur_female
# avatar_docteur_female_nurse = URI.open('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur1_tapj6v.jpg')
avatar_docteur_female_nurse = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur1_tapj6v.jpg')

# avatar_patient = URI.open('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')
avatar_patient = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')

# p avatar_docteur_female

# Create jobs
jobs_array = [ "aromathérapeute", "auriculothérapeute", "balnéothérapeute", "biothérapeute", "crachouillot-thérapeute", "cryothérapeute", "ergothérapeute", "fasciathérapeute", "hypnothérapeute", "kinésithérapeute", "logothérapeute", "magnétothérapeute", "massothérapeute", "musicothérapeute", "phytothérapeute", "podothérapeute", "pseudothérapeute", "psychothérapeute", "radiothérapeute", "sexothérapeute", "thalassothérapeute", "urinothérapeute", "zoothérapeute" ]

# jobs.each do |j|
#   new_job = Job.new(job_name: j)
#   new_job.save!
# end

# p "#{Job.count} crées"


# Specialities
s1 = Speciality.new
s1.name = "ANALYSE DIDACTIQUE"
s1.description = "Désigne l'analyse de celui qui se destine à l'activité de psychanalyste.
Il s'agit de se mettre en position d'analysant (supervisé par un psychanalyste confirmé) afin de découvrir son inconscient et traiter ses difficultés personnelles. Les psychanalystes ainsi formés doivent être capable de communiquer plus librement avec leur inconscient, à partir de l'attention flottante qu'ils ont appris à utiliser."
s1.save!

s2 = Speciality.new
s2.name = "ANALYSE TRANSACTIONNELLE"
s2.description = "Psychothérapie créée par le psychiatre américain Eric BERNE (1910-1970).
Cette analyse est à la fois une théorie de la personnalité, une philosophie sociale et thérapeutique. Elle a pour objectif l'accroissement des capacités sociales et psychologique de la personne.
Eric BERNE considère qu'en chacun de nous cohabitent trois états du Moi (personnalité) : un Moi parent (normatif, transmettant les valeurs culturelles mais limitant l'épanouissement personnel), un Moi enfant (fonctionnant sur le principe de plaisir, la joie, la curiosité, la spontanéité mais aussi sur les peurs diverses, la vulnérabilité et la dépendance) et un Moi adulte (traitant l'information transmise par les réalités extérieures mais aussi par les deux autres états du Moi).
Le Mo adulte prendrait les décisions quant aux libertés du Moi parents ou du Moi enfant. Le but de l'analyse transactionnelle est de permettre de faciliter le passage d'un état du Moi l'autre en fonction de la situation.
Ainsi, l'analyse transactionnelle va travailler sur les relations interpersonnelles au regard des besoins fondamentaux : besoin de stimulation, d'amour, d'estime de soi et de réalisation personnelle."
s2.save!


s3 = Speciality.new
s3.name = "CRI PRIMAL"
s3.description = "Créé par JANOV, le cri primal permettrait d'extérioriser la douleur psychique ressentie, de retrouver un passé enfoui. La personne revit ses blessures fondamentales (qualifiée de primale). Parmi les défenses involontaires, qui sont des réactions automatiques du corps et de l'esprit à la souffrance primale, nous retrouvons les fantasmes, l'énurésie, la gorge serrée, le clignement des yeux incontrôlé et les crispations musculaires.
Parmi les défenses volontaires, nous rencontrons des actions telles que fumer, boire, se droguer, trop manger.
Le cri primal submerge l'être tout entier et rend la personne presque inconsciente de l'endroit où elle se situe. Au fur et à mesure de la thérapie, la personne a des expériences de plus en plus profondes jusqu'au jour où l'équilibre précaire entre le Moi réel et le Moi irréel se fait au profit du Moi réel.
Le cri primal n'est pas un cri pour un cri : c'est l'émergence de la souffrance sous-jacente qui est curative et non le cri en lui-même.
Au cours de la thérapie, les manifestations psychosomatiques sont très fréquentes.
L'objectif du cri primal est de réunifier sa psyché."
s3.save!

s4 = Speciality.new
s4.name = "ART THERAPIE"
s4.description = "L'art thérapie, comme son nom l'indique, est une thérapie utilisant pour médiateur un art : dessin, peinture, collage, grimage, maquillage, danse, sculpture… La production d'une « œuvre » est spécifique de l'art thérapie et les conseils techniques se limitent à faciliter la traduction de la pensée de la personne. L'objectif est de permettre l'expression du psychisme, de développer un langage symbolique pur, non verbal, qui autorise l'accès aux émotions, aux sentiments, plus ou moins reconnus par la personne elle-même.
Dans l'art thérapie, la personne est confrontée à elle-même. En effet, la production artistique exerce une fonction sublimatoire à l'égard des pulsions libidinales et agressives, ainsi qu'une fonction défensive à l'égard du Moi (la personnalité). Elle favorise un processus de régression à l'origine de la création. En permettant la créativité, l'art thérapie génère un remaniement de la personnalité et de la relation affective aux autres."
s4.save!

s5 = Speciality.new
s5.name = "EMDR"
s5.description = "Ce sigle anglophone EMDR pour 'Eye Movement Desensitization and Reprocessing' pourrait être traduit par 'Mouvement des yeux, désensibilisation et retraitement'. Cette thérapie est adaptée pour le traitement des stress post-traumatique. Mise au point par l'américaine Francine Shapiro, l'EMDR est connue pour l'utilisation des mouvements oculaires."
s5.save!

s6 = Speciality.new
s6.name = "ERGOTHERAPIE"
s6.description = "L'ergothérapie est une thérapie par le travail. Ce dernier peut être proposé à titre individuel ou collectif suivant l'état de la personne.
L'ergothérapie permet à la personne de reprendre confiance en elle, mais aussi d'atténuer ses idées délirantes. Elle favorise, les initiatives, l'attention, les associations d'idées et facilite la détente affective.
L'activité collective stimule, quant à elle, l'émulation, soutient la persévérance et favorise la réinsertion sociale."
s6.save!


s7 = Speciality.new
s7.name = "HYPNOSE"
s7.description = "L'hypnose est définie comme un sommeil incomplet particulier, provoqué artificiellement. Bien entendu, ce sommeil n'est pas total car, bien que provoquant un engourdissement de la conscience, il permet le maintient de certaines perceptions sensorielles, ainsi que la communication verbale avec l'hypnotiseur.

L'hypnose permet d'agir sur le métabolisme, la régulation thermique, les systèmes respiratoire, cardio-vasculaire, gastro-intestinal, génito-urinaire, immunitaire, l'activité des glandes endocrines, les appareils sensoriels et enfin la peau, mais de manière tout à fait ponctuelle, transitoire."
s7.save!

s8 = Speciality.new
s8.name = "MUSICOTHERAPIE"
s8.description = "La musicothérapie est réservée à l'utilisation de la musique, du son et du rythme dans une relation thérapeutique.
La musique a des actions directes : lénifiantes, relaxantes, stimulantes, tonifiantes, structurantes et suggestives.
La musicothérapie peut entraîner la libération, l'engagement, l'évasion, la distraction ou la méditation.
En outre, elle favorise la communication interpersonnelle ou au contrairement l'isolement et l'introspection. A ce titre, la musicothérapie peut être considérée comme une technique d'expression, une sensibilisation esthétique.
La musique est un objet extérieur à soi et permet, par conséquent, la projection et l'identification."
s8.save!


s9 = Speciality.new
s9.name = "PSYCHODRAME"
s9.description = "Inventée par MORENO en 1925, le psychodrame se présente comme un théâtre improvisé. Cette recherche de la spontanéité permet de passer de la pensée à l'action, et d'obtenir un effet cathartique (libération pulsionnelle).
Le psychodrame français se réfère à la psychanalyse en travaillant sur l'inconscient, le transfert, l'élaboration symbolique, les identifications simultanées sur les différents membres du groupe.
A travers le psychodrame, les participants prennent conscience des conflits qu'ils ignoraient et qui ne pouvaient être symbolisés, jusqu'alors, par la représentation et la verbalisation."
s9.save!


s10 = Speciality.new
s10.name = "SOPHROLOGIE"
s10.description = "La sophrologie a été fondée par CAYCEDO à Madrid, en 1960. La sophrologie étudie tous les phénomènes provoquant des modifications de la conscience. Ainsi en est-il des relaxations ; des méthodes orientales d'entraînement (yoga, zen et leurs dérivés), de l'hypnose ou d'autres phénomènes comme le Vaudou, le Condombe, le Makumba, y compris aussi les modifications produites par l'action pharmacologique.

La sophrologie amène à une meilleure connaissance de soi et facilite la perception et la compréhension de l'autre. Elle agit sur la conscience par l'intermédiaire des relaxations dynamiques et de la sophronisation (lâcher prise du corps et relâchement musculaire, entre veille et sommeil)."
s10.save!

s11 = Speciality.new
s11.name = "LOGOTHERAPIE"
s11.description = "Créée par Viktor FRANKL, la logothérapie fait référence à la psychologie existentielle. Elle est foncièrement optimiste.
Cette thérapie cherche à aider les personnes à affronter la triade incontournable de l'existence humaine, à savoir le sentiment de culpabilité, la souffrance et la mort. Ainsi, les névroses sont l'expression du vide existentiel dont souffrent de nombreuses personnes.
La logothérapie doit aider la personne, au cours de l'échange verbal, et l'autoriser à briser les mécanismes pathologiques de la rétroaction pour lui permettre de reconnaître la réalité de ses désirs et de ses craintes."
s11.save!

s12 = Speciality.new
s12.name = "ELECTROCHOC"
s12.description = "Technique médicale (sous anesthésie) consistant à produire un choc électrique au niveau de la boîte crânienne générant une crise convulsive généralisée, accompagnée d'une perte de conscience.
La sismothérapie ne se pratique qu'avec le consentement du patient et son accord signé.
Après la séance d'électrochocs, la personne peut présenter une désorientation temporo-spatiale ponctuelle. La confusion disparaît en général au bout de quelques jours, l'amnésie antérograde entre 15 jours et 3 mois. Par contre, l'amnésie rétrograde peut persister jusqu'à 2 à 3 ans"
s12.save!

s13 = Speciality.new
s13.name = "PSYCHOTHERAPIES COGNITIVES"
s13.description = "Les psychothérapies cognitives visent la modification pathologique du traitement de l'information, par l'intermédiaire de jeux de rôles notamment, en faisant prendre conscience du caractère dysfonctionnel, illogique de la pensée de la personne qui consulte.
Chaque trouble pathologique correspond à une interprétation erronée de soi-même et de l'environnement. Derrière ces interprétations, on retrouve 4 types d'erreurs de la pensée :
- L'inférence : arbitraire ou relation causale erronée.
- La généralisation : abusive à partir d'une expérience ponctuelle.
- La maximalisation : des dangers.
- La personnalisation : de tout ce qui a trait à soi."
s13.save!

s14 = Speciality.new
s14.name = "RELAXATION CHEZ L'ENFANT"
s14.description = "La relaxation chez l'enfant n'est appliquée que depuis une 15aine d'années seulement et la plupart des techniques sont dérivées de la méthode de SCHULTZ, comme celle de BERGES, tandis que d'autres sont issues de celles de JACOBSON."
s14.save!

s15 = Speciality.new
s15.name = "PSYCHOTHERAPIES SEXOLOGIQUES"
s15.description = "Les psychothérapies sexologiques visent à améliorer, voire guérir, les troubles génitaux tels que :
- L'impuissance.
- L'éjaculation précoce.
- La frigidité.
- Les dyspareunies.
- Les dysorgasmies.
- Les vaginites…

Avant toutes psychothérapies sexologiques, il est recommandé de rechercher la cause essentielle, organique ou psychologique.

Les traitements biologiques de ces pathologies s'avèrent le plus souvent décevants. La plupart de ces troubles relèvent d'une psychothérapie. Ainsi, les psychothérapies sexologiques peuvent être variées."
s15.save!

s16 = Speciality.new
s16.name = "PSYCHOTHERAPIES COMPORTEMENTALES"
s16.description = "Les psychothérapies comportementales s'inspirent du conditionnement et de l'apprentissage. Elles se réfèrent à un des trois modèles suivants :
- PAVLOV et le « conditionnement répondant » : un stimulus neutre à l'origine, associé au stimulus inconditionnel, devient conditionnel et peut avoir valeur thérapeutique.
- SKINNER et le « conditionnement opérant » : une conduite, quelle qu'elle soit, est ou non modifiée par ses conséquences.
- BANDURA et « l'apprentissage social » : fondée sur l'imitation d'un modèle.

Par exemple, dans la phobie des serpents, on met la personne phobique seule dans une pièce emplie de serpents inoffensifs. Elle peut alors constater que sa panique d'origine n'est pas justifiée car elle n'endurera aucun mal."
s16.save!




s17 = Speciality.new
s17.name = "PROGRAMMATION NEURO-LINGUISTIQUE"
s17.description = "D'inspiration comportementale, la Programmation Neuro-Linguistique vise à modifier le comportement des personnes.
C'est une thérapie brève qui se déroule en trois phases :
1. Recueil d'informations et d'observations centrées sur les mouvements oculaires ou autres manifestations corporelles, sans oublier le langage.
2. Utilisation des techniques d'ancrage (stimulus externe rattaché à un vécu émotionnel mémorisé) et leur désactivation.
3. Technique de recadrage : replacer le comportement dans le contexte où il prend sa signification."
s17.save!



p "#{Speciality.count} spécialités créées"



# offices
office1 = Office.new(name: "TranssAnalyse", address: "18 rue Henri De Ridder, 60000 BEAUVAIS")
office1.save!

office2 = Office.new(name: "Les Halles", address: "22 boulevard Sébastopol, 75004 PARIS")
office2.save!

office3 = Office.new(name: "Les toubibs en folie", address: "1 rue Georges Clémenceau, 24100 BERGERAC")
office3.save!

office4 = Office.new(name: "Médecin et cie", address: "35 allée de Bellevue,  94170 LE PERREUX SUR MARNE")
office4.save!

office5 = Office.new(name: "Medicina Rockefeller", address: "60 Avenue Rockefeller, 69008 LYON")
office5.save!

office6 = Office.new(name: "Toubib center", address: "43 Boulevard du 11 Novembre 1918, 69100 Villeurbanne")
office6.save!

office7 = Office.new(name: "les psys en folie", address: "93 Rue Antoine Charial, 69003 Lyon")
office7.save!

office8 = Office.new(name: "Psy I Love You", address: "12 Rue d'Aubigny, 69003 Lyon")
office8.save!

office9 = Office.new(name: "Mon médoc", address: "14 Place Jules Ferry, 69006 Lyon")
office9.save!


office10 = Office.new(name: "Ma séance", address: "16 Avenue des Acacias, 69003 Lyon")
office10.save!


p "#{Office.count} offices créées"






# Create patient
f = User.new
f.civility = "M."
f.first_name = "Francois"
f.last_name = "Jouvray"
f.email = "francois0690@gmail.com"
f.password = "123456"
f.password_confirmation = "123456"
f.is_pro = false
avatar_patient = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')
f.avatar.attach(io: avatar_patient, filename: 'avatarf.jpg', content_type: 'image/jpg')
f.save!

b = User.new
b.civility = "M."
b.first_name = "Barnabé"
b.last_name = "Dubus"
b.email = "barnabe.dubus@gmail.com"
b.password = "123456"
b.password_confirmation = "123456"
b.is_pro = false
avatar_patient = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')
b.avatar.attach(io: avatar_patient, filename: 'avatarb.jpg', content_type: 'image/jpg')


b.save!

s = User.new
s.civility = "M."
s.first_name = "Shaun"
s.last_name = "O Graham"
s.email = "shaun.o.graham@gmail.com"
s.password = "123456"
s.password_confirmation = "123456"
s.is_pro = false
avatar_patient = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')
s.avatar.attach(io: avatar_patient, filename: 'avatars.jpg', content_type: 'image/jpg')
s.save!

m = User.new
m.civility = "Mme"
m.first_name = "Myriam"
m.last_name = "de Bossoreille"
m.email = "myriam.dbdr@gmail.com"
m.password = "123456"
m.password_confirmation = "123456"
m.is_pro = false
avatar_patient = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')
m.avatar.attach(io: avatar_patient, filename: 'avatarm.jpg', content_type: 'image/jpg')
m.save!

d1 = User.new
d1.civility = "M."
d1.first_name = "Sébastien"
d1.last_name = "Coucou"
d1.email = "docteur1@gmail.com"
d1.password = "123456"
d1.password_confirmation = "123456"
d1.is_pro = true
avatar_docteur_male = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg')
d1.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d1.description = "Je vous accueille tous les jours pour des téléconsultations (appel vocal ou vidéo). Psychologue clinicien, psychothérapeute et psychanalyste, ma pratique auprès d'enfants, d'adolescents et d'adultes repose sur un travail en libéral et en institution (CMP, ITEP, SAVS notamment). Il peut s'agir d'accompagnements ponctuels, de psychothérapie individuelle ou de couple, ou d'entretiens de guidance parentale. N'hésitez pas à me contacter, nous trouverons ensemble la formule qui vous convient !"
d1.phone = "0611751644"
d1.save!

d2 = User.new
d2.civility = "Mme"
d2.first_name = "Céline"
d2.last_name = "Boiteux"
d2.email = "docteur2@gmail.com"
d2.password = "123456"
d2.password_confirmation = "123456"
d2.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d2.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d2.description = "Je traite vos problèmes posés dans l'exercice de la sexualité, que ce soit avant le rapport ou durant le rapport."
d2.phone = "0613069386"
d2.save!


d3 = User.new
d3.civility = "Mme"
d3.first_name = "Elisabeth"
d3.last_name = "KONRAT"
d3.email = "docteur3@gmail.com"
d3.password = "123456"
d3.password_confirmation = "123456"
d3.is_pro = true
avatar_docteur_female_nurse = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur1_tapj6v.jpg')
d3.avatar.attach(io: avatar_docteur_female_nurse, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d3.description = "J'utilise l'Analyse Transactionnelle, discipline structurée et méthodique, dotée d'une boîte à outils précieuse (états du moi Parent/Adulte/Enfant, sentiments parasites, jeux psychologiques, triangle Sauveur/Persecuteur/Victime, scénario de vie, ...). Formée chez ATPsy pour la pratique de psychothérapies en Analyse Transactionnelle, je suis aussi Technicien en PNL (IFPNL). J'ai également suivi le cursus académique de psychanalyse, sur 3 années, à l'EPCI. Je connais bien le monde des entreprises, ayant été salariée + de 20 ans dans les systèmes d'information au marketing, puis comme commerciale. Je reçois aux Halles, à Paris, dans un cabinet lumineux et confortable."
d3.phone = "0664498249"
d3.save!


d4 = User.new
d4.civility = "Mme"
d4.first_name = "Elsa"
d4.last_name = "GRÜNFELD"
d4.email = "docteur4@gmail.com"
d4.password = "123456"
d4.password_confirmation = "123456"
d4.is_pro = true

avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")

d4.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d4.description = "Vous sentez que vous avez besoin d'aide pour surmonter vos difficultés ? Je vous accompagne et vous écoute dans vos difficultés émotionnelles, personnelles et professionnelles. Je suis psychopraticienne certifiée en Psychosynthèse, Psychanalyste, titulaire du Certificat Européen de Psychothérapie."
d4.phone = "0613678846"
d4.save!


d5 = User.new
d5.civility = "Mme"
d5.first_name = "Marion"
d5.last_name = "FABRE"
d5.email = "docteur5@gmail.com"
d5.password = "123456"
d5.password_confirmation = "123456"
d5.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d5.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d5.description = "L'accession à l'autonomie se manifeste par la libération ou le recouvrement de trois facultés : la conscience, la spontanéité, l'intimié.\" E. Berne Classée parmi les thérapies humanistes, l'Analyse Transactionnelle (AT) est une théorie de la communication et de la personnalité dont l'approche est à la fois cognitive, émotionnelle et comportementale. Grâce à une grille de lecture riche aux concepts didactiques, l'AT s'attache à identifier les mécanismes internes et externes qui animent nos émotions, nos pensées et nos comportements. Je suis psychopraticienne formée en Analyse Transactionnelle ainsi qu'en Hypnose et en Sophrologie. Je vous reçois sur rendez-vous du lundi au vendredi ainsi que le samedi. Au plaisir de vous rencontrer et de vous accompagner sur le chemin de votre changement et vers la réalisation de vos objectifs."
d5.phone = "078595817"
d5.save!


d6 = User.new
d6.civility = "Mme"
d6.first_name = "Nathalie"
d6.last_name = "De Reynal"
d6.email = "docteur6@gmail.com"
d6.password = "123456"
d6.password_confirmation = "123456"
d6.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d6.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d6.description = "Je vous accueille et vous accompagne dans un espace bienveillant et sécurisant qui sera le vôtre, afin de vous aider à surmonter vos difficultés et découvrir vos propres ressources. Je suis diplômée de l'université européenne Sigmund Freud University puis formée à l'Analyse Psycho-Organique à l'Ecole Française d'Analyse Psycho-Organique. Je vous propose un suivi intégratif prenant source dans la psychanalyse et s'articulant avec une dimension psychocorporelle afin de vous aider à retrouver votre unité corps/esprit et d'accéder à votre autonomie psychique"
d6.phone = "0607689295"
d6.save!


d7 = User.new
d7.civility = "Mme"
d7.first_name = "Aurélia"
d7.last_name = "De Condé"
d7.email = "docteur7@gmail.com"
d7.password = "123456"
d7.password_confirmation = "123456"
d7.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d7.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d7.description = "La PSYCHOTHÉRAPIE st un processus qui permet de prendre conscience de ses besoins et de ses désirs, d'identifier ses émotions et ses fonctionnements. Elle favorise créativité, autonomie et responsabilité. LA PSYCHOTHÉRAPIE est un voyage vers la connaissance de soi. C'est une démarche permettant d'explorer les difficultés existentielles et les problèmes concrets de la vie, dans un cadre soutenant et bienveillant. La GESTALT-THÉRAPIE ne se limite pas à une vision individualiste de l'humain, mais s'intéresse aux interactions de l'individu avec ses environnements, qu'ils soient personnels, professionnels ou sociaux. Elle place le patient comme acteur du changement et la relation comme moteur de ce changement. S'ajuster, s'orienter, découvrir et donner du sens à sa vie placent la Gestalt-thérapie dans une visée existentielle."
d7.phone = "0641063999"
d7.save!



d8 = User.new
d8.civility = "Mme"
d8.first_name = "Carine"
d8.last_name = "Chaussemiche"
d8.email = "docteur8@gmail.com"
d8.password = "123456"
d8.password_confirmation = "123456"
d8.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d8.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d8.description = "L'Atelier Ame est un cabinet de psychotérapie où Carine Chaussemiche vous accompagne à travers le rêve éveillé et/ou l'art-thérapie pour dépasser votre problématique, découvrir votre potentiel et repartir apaisé. Des ateliers mandala ou de calligraphie thérapeutique vous permettent d'augmenter votre bien-être intérieur."
d8.phone = "0621018586"
d8.save!


d9 = User.new
d9.civility = "Mme"
d9.first_name = "Amandine"
d9.last_name = "Caulle"
d9.email = "docteur9@gmail.com"
d9.password = "123456"
d9.password_confirmation = "123456"
d9.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d9.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d9.description = "psychologue et psychothérapeute pour adultes à Beauvais, spécialisée en ICV (intégration du cycle de la vie), technique similaire à l'EMDR pour la résolution des traumatismes. J'utilise aussi les TCC ou l'EMDR, la sophrologie, la CNV. Séance d'une heure en face à face au cabinet ou à distance."
d9.phone = "0651006945"
d9.save!


d10 = User.new
d10.civility = "Mme"
d10.first_name = "Colombe"
d10.last_name = "Alvarez"
d10.email = "docteur10@gmail.com"
d10.password = "123456"
d10.password_confirmation = "123456"
d10.is_pro = true

avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d10.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d10.description = "Aussi appelé analyste, le psychanalyste assiste les patients afin de surmonter les difficultés psychologiques qu'ils rencontrent (angoisse, inhibition, difficultés affectives, relationnelles, somatisation, dépression, burn-out, mal-être, crise identitaire). Le cabinet de psychothérapie se veut être un espace accueillant et sécurisant, un lieu d'écoute et de soutien pour permettre à la personne en thérapie de se poser, dire ce qui est important pour elle, raconter son histoire, vivre ses émotions librement, dans la confidentialité et sans jugement. Je m'appuie sur une méthode thérapeutique intégrative qui s'appelle l'Analyse Psycho-Organique (APO), elle s'appuie sur la psychanalyse et les outils des thérapies psycho-corporelles.  La traversée de certains passages de vie peut s’avérer plus difficile que d’autres, la psychothérapie permet un accompagnement personnalisé et adapté au rythme de chacun. Je consulte en cabinet et à distance par visioconférence."
d10.phone = "0631531678"
d10.save!


d11 = User.new
d11.civility = "M."
d11.first_name = "Romain"
d11.last_name = "BOULARD"
d11.email = "docteur11@gmail.com"
d11.password = "123456"
d11.password_confirmation = "123456"
d11.is_pro = true
avatar_docteur_male = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg')
d11.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d11.description = "Initialement spécialisé dans l'éducation et la pédagogie auprès des enfants et des adolescents comme animateur et conseillé pédagogique au sein de l'éducation nationale et auprès de l'Aide Sociale à l'Enfance (l'ASE), je me suis intéressé peu à peu à l'adulte et aux personnes âgées qui font partie intégrante de ma patientèle. ​ Formé à la relation d'aide et notamment à l'Approche Centrée sur la Personne *(A.C.P) de CARL ROGERS depuis 2011 à Paris en psychanalyse et psychothérapie. ​ A ce titre j'accompagne en psychothérapie des adultes depuis 2011 en proies à des situations émotionnelles douloureuses (suicide d'un proche, dépression, harcèlement au travail, solitude, mal-être,burn-out, deuil, séparation, victimes d'inceste, ...). Formé par l'école SOHO Holistique à La Baule par Marc Niedergang et Jacqueline Niedergang depuis 2018. La pratique de la sophrologie concerne toute personne qui souhaite améliorer son existence et développer mieux être et sérénité."
d11.phone = "0685431183"
d11.save!

d12 = User.new
d12.civility = "Mme"
d12.first_name = "Catherine"
d12.last_name = "FRUGIER"
d12.email = "docteur12@gmail.com"
d12.password = "123456"
d12.password_confirmation = "123456"
d12.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d12.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d12.description = "Je propose des téléconsultations pendant toute la durée du confinement, après un premier entretien gratuit d'une vingtaine de minutes. En temps normal, je consulte à Voisins le Bretonneux (78). Mes spécificités : • stress: difficulté à gérer ses émotions, état dépressif, anxieux. • moments difficiles de la vie : deuil, maladie, séparation, remise en question des choix de vie... • difficultés relationnelles : difficultés à s’affirmer, sortir d'une relation toxique. Je conçois le travail thérapeutique comme un chemin de découverte de soi qui nous amène à découvrir et mobiliser nos ressources pour sortir de situations difficiles. Je suis attentive à tout ce qui fait que chaque être est unique : ressentis corporels, émotions, pensée, inscription dans la vie sociale, spiritualité. J’ai choisi pour cela comme cadre théorique la gestalt-thérapie et l’analyse transactionnelle."
d12.phone = "0673556461"
d12.save!

d13 = User.new
d13.civility = "Mme"
d13.first_name = "Elisa"
d13.last_name = "Monnet"
d13.email = "docteur13@gmail.com"
d13.password = "123456"
d13.password_confirmation = "123456"
d13.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d13.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d13.description = "Thérapeute en Analyse Transactionnelle, je suis aussi coach professionnelle certifiée. Je vous accompagne sur toutes les difficultés liées aux relations à autrui et à soi-même: * communiquer (gestion des émotions), * créer du lien (de l'intimité et des relations harmonieuses), * développer le lien durablement (confiance en soi, vaincre la peur de l'abandon, du rejet) Grâce à une première carrière dans un grand groupe international, je vous apporte mes compétences, que vos empêchements se manifestent sur un plan professionnel ou personnel, avec des symptômes précis ou par une angoisse diffuse et ce, dans le but d'y voir clair, d'y apporter du sens afin de les dépasser. Vous avez de la ressource !"
d13.phone = "0764169333"
d13.save!

d14 = User.new
d14.civility = "Mme"
d14.first_name = "Fanny"
d14.last_name = "DEBAT"
d14.email = "docteur14@gmail.com"
d14.password = "123456"
d14.password_confirmation = "123456"
d14.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d14.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d14.description = "Consultations possibles le samedi et le dimanche. Consultations par skype ou par téléphone pendant le confinement. Ça ne va pas, mais... On reporte toujours à plus tard. On se dit que ce n'est pas si grave, qu'il ne faut pas s'apitoyer sur son sort... que cela pourrait être pire ! Sans doute. Mais... si cela pouvait être mieux ? Et même pourquoi pas, beaucoup mieux ? Si votre vie valait bien plus qu'un ca pourrait être pire ? Vous souffrez de déprime, stress, anxiété ou angoisse, et cela perdure... Vous avez des problèmes de sommeil ou dans vos relations ( travail, couple, en société...). Être parent ou beau-parent soulève des difficultés... Ou tout simplement, vous ne vous sentez pas confortable et heureux-se dans votre vie, peu importe la raison... La thérapie peut vous aider à mieux vous connaître et aller vers le changement. Lors d'un premier rendez-vous, qui n'engage pas à poursuivre, nous faisons connaissance et voyons ensemble ce qu'il est possible de faire."
d14.phone = "0760365935"
d14.save!

d15 = User.new
d15.civility = "M."
d15.first_name = "Jean Cyrille"
d15.last_name = "Lecoq"
d15.email = "docteur15@gmail.com"
d15.password = "123456"
d15.password_confirmation = "123456"
d15.is_pro = true
avatar_docteur_male = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg')
d15.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d15.description = "Aide lors de cette crise sanitaire ! utilisez et découvrez par le E-Coaching, les techniques des champions pour surmonter vos difficultés et cette situation inédite ! Devenez un Etre - Athlète, REALISEZ- Vous ! Je vous propose lors de nos séances de mettre en lumière les éléments permettant de vous réaliser sur les plans personnels, professionnels et sportifs. En effet, nous disposons de toutes les techniques pour mettre en oeuvre cela et ainsi de faire de votre quotidien, un cheminement différent !"
d15.phone = "0778257319"
d15.save!

d16 = User.new
d16.civility = "Mme"
d16.first_name = "Frédérique"
d16.last_name = "BETTON"
d16.email = "docteur16@gmail.com"
d16.password = "123456"
d16.password_confirmation = "123456"
d16.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d16.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d16.description = "En raison de l'épidémie du Covid 19 et du confinement auquel nous sommes contraints, je vous propose une écoute par téléphone ou par visioconférence. N'hésitez pas si vous ressentez la nécessité de recevoir une aide extérieure attentive et capable de vous conseiller. J'accueille toute personne ressentant le besoin de confier ses questionnements à un tiers capable de lui apporter un éclairage nouveau et bienveillant. Angoisses, répétition de conflits et d'échecs, phobies, états dépressifs persistants et troubles de la personnalité sont de fréquents motifs de consultation. Les relations parents-enfants délicates, les conflits récurrents dans le couple, et les difficultés au travail sont également une source de souffrance élaborable en thérapie."
d16.phone = "0619057051"
d16.save!

d17 = User.new
d17.civility = "Mme"
d17.first_name = "Alice"
d17.last_name = "Bertrand-Hardy"
d17.email = "docteur17@gmail.com"
d17.password = "123456"
d17.password_confirmation = "123456"
d17.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d17.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d17.description = "Vous vivez un malaise, ou une souffrance, et vous ne parvenez pas à le résoudre seul : difficultés professionnelles ou relationnelles répétitives, burn-out, problèmes de couple, émotions / stress difficiles à gérer, rupture, deuil, mal-être diffus ou envahissant, ... Vous avez besoin d'être écouté, de comprendre ce qui se passe pour pouvoir avancer. La psychothérapie vise à vous libérer de ce qui vous bloque intérieurement pour retrouver énergie et joie de vivre dans le présent, en lien avec les autres. Dans un premier temps, nous explorons ce qui se passe pour vous. Vous clarifiez ainsi ce que vous voulez en vous engageant dans ce travail de thérapie. Je suis là pour accueillir avec vous ce que vous vivez : la parole, la réflexion mais aussi le corps, les ressentis, les rêves, ce qui se passe entre nous ont leur place dans notre travail. Nous pourrons aussi utiliser des medias créatifs (métaphores, dessins, collages, ...)."
d17.phone = "0620845809"
d17.save!

d18 = User.new
d18.civility = "Mme"
d18.first_name = "Mélanie"
d18.last_name = "Bouxom"
d18.email = "docteur18@gmail.com"
d18.password = "123456"
d18.password_confirmation = "123456"
d18.is_pro = true
avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
d18.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d18.description = "Psychologue clinicienne, dotée d'un Master 2 en psychologie clinique et psychopathologie ainsi que d'une expérience en psychiatrie, je propose des consultations individuelles, mais aussi de couples ou familiales, sur rendez-vous. Je propose une écoute bienveillante, active, soutenante afin de, ensemble, comprendre ce qui se passe et construire des moyens durables pour vous permettre de dépasser les difficultés que vous rencontrez. Selon les cas, un soutien psychologique ou une psychothérapie peut être proposée; cette dernière ayant pour but de restaurer un MOI plus conforme à celui ou celle que vous êtes devenu.e, et une confiance en soi parfois fragilisée par certaines épreuves ou expériences du passées, ou fragilisée par les peurs et croyances inconscientes qui dirigent nos vies à notre insu. Ce travail de rencontre avec soi-même restaure un narcissisme positif indispensable et une légitimité à être et à penser nécessaire pour affronter le monde et les expériences de la vie."
d18.phone = "0698295565"
d18.save!

d19 = User.new
d19.civility = "M."
d19.first_name = "Stéphane"
d19.last_name = "CHAUSSIN"
d19.email = "docteur19@gmail.com"
d19.password = "123456"
d19.password_confirmation = "123456"
d19.is_pro = true
avatar_docteur_male = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg')
d19.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d19.description = "J'accompagne des personnes qui rencontrent des difficultés, des souffrances, des blocages dans leurs vies. Vous pouvez être amenés à consulter: • suite à des évènements de vie difficiles à traverser • suite à des comportements ou des états qui perturbent votre quotidien • suite à des actes dont vous avez été victimes Je suis formé à la Gestalt thérapie et ma posture de thérapeute s’appuie sur cette approche. Issue de la psychologie humaniste, la Gestalt thérapie est attentive aux modes de contact avec notre environnement et vise à retrouver de la souplesse et de la fluidité dans nos fonctionnements et nos interactions avec les autres. Elle donne la parole au corps et cherche à équilibrer les pôles intellectuel, corporel et affectif. Elle vise également à développer l'autonomie, la responsabilité et la créativité."
d19.phone = "0768708698"
d19.save!

d20 = User.new
d20.civility = "M."
d20.first_name = "laurent"
d20.last_name = "Depraz"
d20.email = "docteur20@gmail.com"
d20.password = "123456"
d20.password_confirmation = "123456"
d20.is_pro = true
avatar_docteur_male = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg')
d20.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d20.description = "Pendant cette période difficile de confinement, je vous propose des téléconsultations vidéos ou téléphoniques ### Vous engager dans une psychothérapie Gestalt, c’est faire le choix de la confiance en la possibilité de changement, d'aller mieux Vous souhaitez commencer une psychothérapie Gestalt : - Peut être vivez-vous une situation de souffrance : Ce peut être à l'occasion d'une expérience difficile (anxiété, tristesse, estime de soi, deuil, conflit, burn out), ou à l'occasion de difficultés relationnelles (en couple, au travail, en famille)  - Peut être désirez-vous donner plus de sens à votre vie, retrouver plus de marge de manœuvre, de capacité à choisir la direction que vous souhaitez donner à votre vie Je vous accompagne dans le travail thérapeutique pour interroger vos comportements répétitifs, vos peurs, vos résistances et je vous soutiens dans votre cheminement vers le changement, la nouveauté et la confiance."
d20.phone = "0675697705"
d20.save!


p1 = User.new
p1.civility = "M."
p1.first_name = "Marcel"
p1.last_name = "Déprime"
p1.email = "patient1@gmail.com"
p1.password = "123456"
p1.password_confirmation = "123456"
p1.is_pro = false
avatar_patient = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')
p1.avatar.attach(io: avatar_patient, filename: 'avatarp1.jpg', content_type: 'image/jpg')
p1.save!

p2 = User.new
p2.civility = "Mme"
p2.first_name = "Géraldine"
p2.last_name = "Je Vaisbien"
p2.email = "patient2@gmail.com"
p2.password = "123456"
p2.password_confirmation = "123456"
p2.is_pro = false
avatar_patient = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')
p2.avatar.attach(io: avatar_patient, filename: 'avatarp1.jpg', content_type: 'image/jpg')
p2.save!


p "#{User.count} utilisateurs crées"

# Jobs associés aux 2 toubibs
job1 = Job.new(user: d1, job_name: jobs_array[17])
job1.save!
job2 = Job.new(user: d1, job_name: jobs_array[4])
job2.save!
job3 = Job.new(user: d2, job_name: jobs_array[19])
job3.save!
job4 = Job.new(user: d2, job_name: jobs_array[21])
job4.save!

p "#{Job.count} jobs crées"



# Activity
activity1 = Activity.new
activity1.user = d1
activity1.speciality = s1
activity1.office = office1
activity1.save!

activity2 = Activity.new
activity2.user = d2
activity2.speciality = s2
activity2.office = office2
activity2.save!

activity3 = Activity.new
activity3.user = d3
activity3.speciality = s3
activity3.office = office3
activity3.save!

activity4 = Activity.new
activity4.user = d4
activity4.speciality = s4
activity4.office = office4
activity4.save!

activity5 = Activity.new
activity5.user = d5
activity5.speciality = s5
activity5.office = office5
activity5.save!

activity6 = Activity.new
activity6.user = d10
activity6.speciality = s12
activity6.office = office5
activity6.save!


activity7 = Activity.new
activity7.user = d10
activity7.speciality = s16
activity7.office = office5
activity7.save!

activity8 = Activity.new
activity8.user = d10
activity8.speciality = s11
activity8.office = office5
activity8.save!


p "#{Activity.count} activités créées"



# Consultation
consultation1 = Consultation.new
consultation1.activity = activity1
consultation1.user = p1
consultation1.date = "2020-07-17"
consultation1.save!

consultation2 = Consultation.new
consultation2.activity = activity2
consultation2.user = p2
consultation2.date = "2020-07-25"
consultation2.save!

p "#{Consultation.count} consultations créées"
