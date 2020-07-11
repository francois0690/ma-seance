# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
require "down"


# heroku run rake searchkick:reindex:all



p "cleaning database"
Consultation.destroy_all
Activity.destroy_all
Job.destroy_all
Speciality.destroy_all
Office.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all


# Create avatars
# avatar_docteur_male = URI.open("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg")

# avatar_docteur_male = open(URI.escape("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg"))

# avatar_docteur_male = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg')

# avatar_docteur_female = URI.open("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")
# avatar_docteur_female = Down.download("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/avatar_docteur_dp7tj7.png")

# p avatar_docteur_female
# avatar_docteur_female_nurse = URI.open('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur1_tapj6v.jpg')
# avatar_docteur_female_nurse = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur1_tapj6v.jpg')

# avatar_patient = URI.open('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')
# avatar_patient = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1592053825/ma-seance/avatar_generique_ikdvyc.png')

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

office7 = Office.new(name: "Cabinet", address: "93 Rue Antoine Charial, 69003 Lyon")
office7.save!

office8 = Office.new(name: "Centre de psychothérapie", address: "12 Rue d'Aubigny, 69003 Lyon")
office8.save!

office9 = Office.new(name: "Cabinet de Lyon 6", address: "14 Place Jules Ferry, 69006 Lyon")
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
avatar_patient = Down.download('https://avatars0.githubusercontent.com/u/37520417?s=400&u=3844496654bc3484ed04269ee8ef806f4b0f6c46&v=4')
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
avatar_patient = Down.download('https://avatars0.githubusercontent.com/u/55020167?s=400&u=3e0880f7916aeabde344be62e94e72f2bd1c0596&v=4')
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
d1.first_name = "Sigmund"
d1.last_name = "Freud"
d1.email = "docteur1@gmail.com"
d1.password = "123456"
d1.password_confirmation = "123456"
d1.is_pro = true
avatar_docteur_male = Down.download('https://www.abebooks.fr/images-livres/livres/Sigmund-Freud/freud.jpg')
d1.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d1.description = "Non mais allo, la psychanalyse c'est so 1900 ! Je me suis chauffé pour la musicothérapie et franchement c'est del a bombe"
d1.phone = "0611751644"
d1.save!

d2 = User.new
d2.civility = "Mme"
d2.first_name = "Emma"
d2.last_name = "Yohnèz"
d2.email = "myriam.6c@gmail.com"
d2.password = "123456"
d2.password_confirmation = "123456"
d2.is_pro = true
avatar_docteur_female = Down.download("https://delicatessenstudio.com/wp-content/uploads/2016/02/jeunefemme-900-001.jpg")
d2.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d2.description = "Psychanalyste, sophrologue et hypnothérapeute. La dimension sophrologique (le corps, les émotions) et la dimension analytique (votre vécu, votre histoire) de mon accompagnement thérapeutique, fondé sur une écoute empathique et active, vous aident à comprendre l'apparition de phénomènes douloureux (stress, angoisse, anxiété, troubles relationnels, troubles du sommeil, troubles des conduites alimentaires, phobies), les difficultés professionnelles (souffrance et stress au travail, burn-out), mais aussi les événements extrêmement éprouvants de la vie (deuil, perte, mais aussi atteintes psychiques et physiques). Thérapies individuelles adultes (à partir de 18 ans), thérapies de couple. Membre de l'Association Française et Francophone de Psychologie Positive (AFFPP) Membre de la Société Française de Sophrologie (SFS) Membre de la Chambre Syndicale de la Sophrologie"
d2.phone = "0613069386"
d2.save!


d3 = User.new
d3.civility = "Mme"
d3.first_name = "Adrienne"
d3.last_name = "Kepourha"
d3.email = "docteur3@gmail.com"
d3.password = "123456"
d3.password_confirmation = "123456"
d3.is_pro = true
avatar_docteur_female_nurse = Down.download('https://www.photographe-corporate.net/wp-content/uploads/2019/10/01_collaborateur_couleur-682x1024.jpg')
d3.avatar.attach(io: avatar_docteur_female_nurse, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d3.description = "J'utilise l'Analyse Transactionnelle, discipline structurée et méthodique, dotée d'une boîte à outils précieuse (états du moi Parent/Adulte/Enfant, sentiments parasites, jeux psychologiques, triangle Sauveur/Persecuteur/Victime, scénario de vie, ...). Formée chez ATPsy pour la pratique de psychothérapies en Analyse Transactionnelle, je suis aussi Technicien en PNL (IFPNL). J'ai également suivi le cursus académique de psychanalyse, sur 3 années, à l'EPCI. Je connais bien le monde des entreprises, ayant été salariée + de 20 ans dans les systèmes d'information au marketing, puis comme commerciale. Je reçois aux Halles, à Paris, dans un cabinet lumineux et confortable."
d3.phone = "0664498249"
d3.save!


d4 = User.new
d4.civility = "M."
d4.first_name = "Amhed"
d4.last_name = "Heppand"
d4.email = "docteur4@gmail.com"
d4.password = "123456"
d4.password_confirmation = "123456"
d4.is_pro = true
avatar_docteur_female = Down.download("https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80")
d4.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d4.description = "Vous sentez que vous avez besoin d'aide pour surmonter vos difficultés ? Je vous accompagne et vous écoute dans vos difficultés émotionnelles, personnelles et professionnelles. Je suis psychopraticienne certifiée en Psychosynthèse, Psychanalyste, titulaire du Certificat Européen de Psychothérapie."
d4.phone = "0613678846"
d4.save!


d5 = User.new
d5.civility = "M."
d5.first_name = "Adam"
d5.last_name = "Troijour"
d5.email = "docteur5@gmail.com"
d5.password = "123456"
d5.password_confirmation = "123456"
d5.is_pro = true
avatar_docteur_female = Down.download("https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80")
d5.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d5.description = "L'accession à l'autonomie se manifeste par la libération ou le recouvrement de trois facultés : la conscience, la spontanéité, l'intimié.\" E. Berne Classée parmi les thérapies humanistes, l'Analyse Transactionnelle (AT) est une théorie de la communication et de la personnalité dont l'approche est à la fois cognitive, émotionnelle et comportementale. Grâce à une grille de lecture riche aux concepts didactiques, l'AT s'attache à identifier les mécanismes internes et externes qui animent nos émotions, nos pensées et nos comportements. Je suis psychopraticienne formée en Analyse Transactionnelle ainsi qu'en Hypnose et en Sophrologie. Je vous reçois sur rendez-vous du lundi au vendredi ainsi que le samedi. Au plaisir de vous rencontrer et de vous accompagner sur le chemin de votre changement et vers la réalisation de vos objectifs."
d5.phone = "078595817"
d5.save!


d6 = User.new
d6.civility = "M."
d6.first_name = "Alain"
d6.last_name = "Terrieur"
d6.email = "docteur6@gmail.com"
d6.password = "123456"
d6.password_confirmation = "123456"
d6.is_pro = true
avatar_docteur_female = Down.download("https://images.unsplash.com/photo-1575215342504-1f674ab294f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1224&q=80")
d6.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d6.description = "Je vous accueille et vous accompagne dans un espace bienveillant et sécurisant qui sera le vôtre, afin de vous aider à surmonter vos difficultés et découvrir vos propres ressources. Je suis diplômée de l'université européenne Sigmund Freud University puis formée à l'Analyse Psycho-Organique à l'Ecole Française d'Analyse Psycho-Organique. Je vous propose un suivi intégratif prenant source dans la psychanalyse et s'articulant avec une dimension psychocorporelle afin de vous aider à retrouver votre unité corps/esprit et d'accéder à votre autonomie psychique"
d6.phone = "0607689295"
d6.save!


d7 = User.new
d7.civility = "M."
d7.first_name = "Timothé"
d7.last_name = "Rapi"
d7.email = "docteur7@gmail.com"
d7.password = "123456"
d7.password_confirmation = "123456"
d7.is_pro = true
avatar_docteur_female = Down.download("https://images.unsplash.com/photo-1556157382-97eda2d62296?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80")
d7.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d7.description = "Entreprendre une thérapie, « aller parler à quelqu’un »… Pourquoi ? Sentir à un moment de sa vie que l’on a besoin d’être aidé, que l’on aimerait changer certaines choses, ne plus réagir de la même façon, se débarrasser de reflex parasites, abandonner des mauvaises habitudes, explorer différemment son passé, enfin comprendre, et avancer… Comment définir le processus d’une thérapie ?... Apprendre à se découvrir et comprendre qui l’on est, pour quelles raisons, et doucement les changements se feront."
d7.phone = "0641063999"
d7.save!



d8 = User.new
d8.civility = "Mme"
d8.first_name = "Amandine"
d8.last_name = "Caulle"
d8.email = "docteur8@gmail.com"
d8.password = "123456"
d8.password_confirmation = "123456"
d8.is_pro = true
avatar_docteur_female = Down.download("https://www.empara.fr/medias/corporate-by-portrait-madame_portrait-business-3-1.jpg")
d8.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d8.description = "psychologue et psychothérapeute pour adultes à Beauvais, spécialisée en ICV (intégration du cycle de la vie), technique similaire à l'EMDR pour la résolution des traumatismes. J'utilise aussi les TCC ou l'EMDR, la sophrologie, la CNV. Séance d'une heure en face à face au cabinet ou à distance."
d8.phone = "0621018586"
d8.save!


d9 = User.new
d9.civility = "M."
d9.first_name = "Ambroise"
d9.last_name = "Bien-lepetit"
d9.email = "docteur9@gmail.com"
d9.password = "123456"
d9.password_confirmation = "123456"
d9.is_pro = true
avatar_docteur_female = Down.download("https://www.hubertraguet.com/wp-content/uploads/2017/08/Portrait-corporate-Bazin-7997.jpg")
d9.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d9.description = "Je suis à la fois psychothérapeute, psychanalyste et coach. Je tiens à une pratique très intégrative au service de mes patients, et j'utilise aussi bien l'hypnose, l'analyse transactionnelle, la PNL ou la psychanalyse en fonction des personnes et des thématiques. Burn out, anxieté, phobies, changements difficiles, je vous accompagnerai dans un climat de confiance et de coopération. Ma pratique est orientée aussi bien à destination des adultes que des enfants. Mon titre de psychothérapeute est reconnu par l'Agence Régionale de Santé et les consultations sont prises en charge par certaines mutuelles."
d9.phone = "0651006945"
d9.save!


d10 = User.new
d10.civility = "M."
d10.first_name = "Aubin"
d10.last_name = "Sahalor"
d10.email = "docteur10@gmail.com"
d10.password = "123456"
d10.password_confirmation = "123456"
d10.is_pro = true
avatar_docteur_female = Down.download("https://www.photographe-corporate.net/wp-content/uploads/2019/02/IMG_1783-683x1024.jpg")
d10.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d10.description = "Aussi appelé analyste, le psychanalyste assiste les patients afin de surmonter les difficultés psychologiques qu'ils rencontrent (angoisse, inhibition, difficultés affectives, relationnelles, somatisation, dépression, burn-out, mal-être, crise identitaire). Le cabinet de psychothérapie se veut être un espace accueillant et sécurisant, un lieu d'écoute et de soutien pour permettre à la personne en thérapie de se poser, dire ce qui est important pour elle, raconter son histoire, vivre ses émotions librement, dans la confidentialité et sans jugement. Je m'appuie sur une méthode thérapeutique intégrative qui s'appelle l'Analyse Psycho-Organique (APO), elle s'appuie sur la psychanalyse et les outils des thérapies psycho-corporelles.  La traversée de certains passages de vie peut s’avérer plus difficile que d’autres, la psychothérapie permet un accompagnement personnalisé et adapté au rythme de chacun. Je consulte en cabinet et à distance par visioconférence."
d10.phone = "0631531678"
d10.save!


d11 = User.new
d11.civility = "M."
d11.first_name = "René"
d11.last_name = "Relax"
d11.email = "maseancetherapeutique@gmail.com"
d11.password = "123456"
d11.password_confirmation = "123456"
d11.is_pro = true
avatar_docteur_male = Down.download('https://res.cloudinary.com/dewwle39t/image/upload/v1594459503/ma-seance/francois_20_vhhnss.jpg')
d11.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d11.description = "Initialement spécialisé dans l'éducation et la pédagogie auprès des enfants et des adolescents comme animateur et conseillé pédagogique au sein de l'éducation nationale et auprès de l'Aide Sociale à l'Enfance (l'ASE), je me suis intéressé peu à peu à l'adulte et aux personnes âgées qui font partie intégrante de ma patientèle. ​ Formé à la relation d'aide et notamment à l'Approche Centrée sur la Personne *(A.C.P) de CARL ROGERS depuis 2011 à Paris en psychanalyse et psychothérapie. ​ A ce titre j'accompagne en psychothérapie des adultes depuis 2011 en proies à des situations émotionnelles douloureuses (suicide d'un proche, dépression, harcèlement au travail, solitude, mal-être,burn-out, deuil, séparation, victimes d'inceste, ...). Formé par l'école SOHO Holistique à La Baule par Marc Niedergang et Jacqueline Niedergang depuis 2018. La pratique de la sophrologie concerne toute personne qui souhaite améliorer son existence et développer mieux être et sérénité."
d11.phone = "0685431183"
d11.save!

d12 = User.new
d12.civility = "M."
d12.first_name = "Brice"
d12.last_name = "Glass"
d12.email = "docteur12@gmail.com"
d12.password = "123456"
d12.password_confirmation = "123456"
d12.is_pro = true
avatar_docteur_female = Down.download("https://images.unsplash.com/photo-1553798400-e200a1c53262?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80")
d12.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d12.description = "Psychopraticienne relationnelle et Coach, mon accompagnement vise à soulager les angoisses, les blocages, les souffrances que nous pouvons rencontrer dans notre vie. Afin d’être au plus près de la singularité de chaque personne, j’utilise une méthode de thérapie multiréférentielle intégrant : l'Analyse TriDimensionnelle, la sophrologie, l'hypnose Ericksonienne, Psychogénéalogie. Je reçois dans mon cabinet les adultes, adolescents, enfants à partir de cinq ans et les couples. En tant que Psychopraticienne je dois obligatoirement faire un travail personnel ainsi qu'un travail de supervision auprès d’un autre professionnel de la psychothérapie. Cela garanti mon professionnalisme et mon éthique. Je suis également inscrite au collège clinique de Montpellier, membre de l’Institut du Champ Freudien sous l’égide du Département de psychanalyse de l’université de Paris VIII et de l’École de la Cause freudienne."
d12.phone = "0673556461"
d12.save!

d13 = User.new
d13.civility = "Mme"
d13.first_name = "Camille"
d13.last_name = "Zoll"
d13.email = "docteur13@gmail.com"
d13.password = "123456"
d13.password_confirmation = "123456"
d13.is_pro = true
avatar_docteur_female = Down.download("https://www.isabellemorison.com/uploads/corporate/institutionnel/01a-portrait-corporate.jpg")
d13.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d13.description = "Thérapeute en Analyse Transactionnelle, je suis aussi coach professionnelle certifiée. Je vous accompagne sur toutes les difficultés liées aux relations à autrui et à soi-même: * communiquer (gestion des émotions), * créer du lien (de l'intimité et des relations harmonieuses), * développer le lien durablement (confiance en soi, vaincre la peur de l'abandon, du rejet) Grâce à une première carrière dans un grand groupe international, je vous apporte mes compétences, que vos empêchements se manifestent sur un plan professionnel ou personnel, avec des symptômes précis ou par une angoisse diffuse et ce, dans le but d'y voir clair, d'y apporter du sens afin de les dépasser. Vous avez de la ressource !"
d13.phone = "0764169333"
d13.save!

d14 = User.new
d14.civility = "Mme"
d14.first_name = "Collette"
d14.last_name = "Stérolle"
d14.email = "docteur14@gmail.com"
d14.password = "123456"
d14.password_confirmation = "123456"
d14.is_pro = true
avatar_docteur_female = Down.download("https://images.unsplash.com/photo-1578923813875-bf8b98f36b0f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80")
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
avatar_docteur_male = Down.download('https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1256&q=80')
d15.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d15.description = "Aide lors de cette crise sanitaire ! utilisez et découvrez par le E-Coaching, les techniques des champions pour surmonter vos difficultés et cette situation inédite ! Devenez un Etre - Athlète, REALISEZ- Vous ! Je vous propose lors de nos séances de mettre en lumière les éléments permettant de vous réaliser sur les plans personnels, professionnels et sportifs. En effet, nous disposons de toutes les techniques pour mettre en oeuvre cela et ainsi de faire de votre quotidien, un cheminement différent !"
d15.phone = "0778257319"
d15.save!

d16 = User.new
d16.civility = "M."
d16.first_name = "Gérard"
d16.last_name = "Manfin"
d16.email = "docteur16@gmail.com"
d16.password = "123456"
d16.password_confirmation = "123456"
d16.is_pro = true
avatar_docteur_female = Down.download("https://www.docteur-barry.com/wp-content/uploads/2018/09/medecine-esthetique-homme-40-ans-compiegne-dr-barry.jpg")
d16.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d16.description = "Thérapeute intégrative je reçois adultes et adolescents, en consultations individuelles. Reposant sur les fondements de la psychothérapie analytique, l'approche intégrative se veut également ouverte à d'autres axes thérapeutiques (Gestalt thérapie, sophrologie, sexothérapie...) En effet, il appartient au thérapeute de venir rencontrer le patient là où il est, et de pouvoir s'adapter dans ses propositions d'accompagnement. Pourquoi entreprendre une thérapie? Situations récurrentes, difficultés relationnelles, problématiques de séparation ou d'attachement, mal être, angoisse, dépression, troubles somatiques... Qu'attendre de l'espace thérapeutique ? - Pouvoir mettre des mots, être accompagné, être entendu, sans jugement. - mettre à jour des fonctionnements, des répétitions, des croyances. - accéder, grâce à ces prises de conscience, à plus de liberté, de choix, et mettre en place des modalités plus appropriées."
d16.phone = "06199000051"
d16.save!

d17 = User.new
d17.civility = "Mme"
d17.first_name = "Irénée-Ludivine"
d17.last_name = "Enfant"
d17.email = "docteur17@gmail.com"
d17.password = "123456"
d17.password_confirmation = "123456"
d17.is_pro = true
avatar_docteur_female = Down.download("https://lh3.googleusercontent.com/proxy/iVRnK0uAZQj4znip3nCSqTYVkQo7mNHdtyw0M7zxJlrqtBoO5k7rpZGQVUTFFnYWhOLYincF18FGm8oL0hgwSG0L05wCOefM5t5sNT5UlBce1aYfh_ewkbsFgMh7nV0tt7Qxpco")
d17.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d17.description = "Je vous reçois à mon cabinet, proche du centre ville de Dreux, pour des thérapies individuelles, de couple ou familiales. Psychothérapies, Thérapies comportementales et Thérapies de soutien, Relaxation et Sophrologie. Je propose des consultations individuelles pour adultes, adolescents et enfants, des consultations de couple, des consultations familiales (parents/enfants, frères/sœurs, grands parents...), ainsi que des séances de sophrologie et d'Art Thérapie pour enfants à partir de 6 ans, adolescents et adultes en séances individuelles ou en groupes jusqu'à 6 personnes. Je vous reçois du mardi au vendredi de 10 h à 20 h et le samedi de 11 h à 18 h. Selon les besoins, je propose également des consultations à distance via Skype."
d17.phone = "0620845809"
d17.save!

d18 = User.new
d18.civility = "Mme"
d18.first_name = "Nadège"
d18.last_name = "Avude Hotre"
d18.email = "docteur18@gmail.com"
d18.password = "123456"
d18.password_confirmation = "123456"
d18.is_pro = true
avatar_docteur_female = Down.download("https://www.michelrichardphotographe.fr/wp-content/uploads/2018/07/portrait-corporate-femme.jpg")
d18.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d18.description = "Psychologue clinicienne, dotée d'un Master 2 en psychologie clinique et psychopathologie ainsi que d'une expérience en psychiatrie, je propose des consultations individuelles, mais aussi de couples ou familiales, sur rendez-vous. Je propose une écoute bienveillante, active, soutenante afin de, ensemble, comprendre ce qui se passe et construire des moyens durables pour vous permettre de dépasser les difficultés que vous rencontrez. Selon les cas, un soutien psychologique ou une psychothérapie peut être proposée; cette dernière ayant pour but de restaurer un MOI plus conforme à celui ou celle que vous êtes devenu.e, et une confiance en soi parfois fragilisée par certaines épreuves ou expériences du passées, ou fragilisée par les peurs et croyances inconscientes qui dirigent nos vies à notre insu. Ce travail de rencontre avec soi-même restaure un narcissisme positif indispensable et une légitimité à être et à penser nécessaire pour affronter le monde et les expériences de la vie."
d18.phone = "0729556576"
d18.save!

d19 = User.new
d19.civility = "M."
d19.first_name = "Jean"
d19.last_name = "Neymard"
d19.email = "docteur19@gmail.com"
d19.password = "123456"
d19.password_confirmation = "123456"
d19.is_pro = true
avatar_docteur_male = Down.download('https://www.centre-psychologue-nice.fr/wp-content/uploads/2016/09/choisir-son-prychologue-%C3%A0-nice-300x200.jpg')
d19.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d19.description = "J'accompagne des personnes qui rencontrent des difficultés, des souffrances, des blocages dans leurs vies. Vous pouvez être amenés à consulter: • suite à des évènements de vie difficiles à traverser • suite à des comportements ou des états qui perturbent votre quotidien • suite à des actes dont vous avez été victimes Je suis formé à la Gestalt thérapie et ma posture de thérapeute s’appuie sur cette approche. Issue de la psychologie humaniste, la Gestalt thérapie est attentive aux modes de contact avec notre environnement et vise à retrouver de la souplesse et de la fluidité dans nos fonctionnements et nos interactions avec les autres. Elle donne la parole au corps et cherche à équilibrer les pôles intellectuel, corporel et affectif. Elle vise également à développer l'autonomie, la responsabilité et la créativité."
d19.phone = "0768708698"
d19.save!

d20 = User.new
d20.civility = "M."
d20.first_name = "André"
d20.last_name = "Pression"
d20.email = "docteur20@gmail.com"
d20.password = "123456"
d20.password_confirmation = "123456"
d20.is_pro = true
avatar_docteur_male = Down.download('https://coupedecheveuxhomme.org/wp-content/uploads/2019/11/artikel4.jpg')
d20.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d20.description = "Pendant cette période difficile de confinement, je vous propose des téléconsultations vidéos ou téléphoniques ### Vous engager dans une psychothérapie Gestalt, c’est faire le choix de la confiance en la possibilité de changement, d'aller mieux Vous souhaitez commencer une psychothérapie Gestalt : - Peut être vivez-vous une situation de souffrance : Ce peut être à l'occasion d'une expérience difficile (anxiété, tristesse, estime de soi, deuil, conflit, burn out), ou à l'occasion de difficultés relationnelles (en couple, au travail, en famille)  - Peut être désirez-vous donner plus de sens à votre vie, retrouver plus de marge de manœuvre, de capacité à choisir la direction que vous souhaitez donner à votre vie Je vous accompagne dans le travail thérapeutique pour interroger vos comportements répétitifs, vos peurs, vos résistances et je vous soutiens dans votre cheminement vers le changement, la nouveauté et la confiance."
d20.phone = "0675697705"
d20.save!

d21 = User.new
d21.civility = "M."
d21.first_name = "Nordine"
d21.last_name = "Ohter"
d21.email = "docteur21@gmail.com"
d21.password = "123456"
d21.password_confirmation = "123456"
d21.is_pro = true

avatar_docteur_female = Down.download("https://thumbs.dreamstime.com/b/un-portrait-d-homme-attirant-de-ans-130569596.jpg")
d21.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d21.description = "Bonjour, j'accompagne les adultes, les adolescents et les couples dans un travail de transformation de soi, pour s'accueillir pleinement dans sa sensibilité et créer de la nouveauté dans sa vie. Thérapie appuyée sur les pensées, les émotions, avec un questionnement du langage corporel. Travail possible sur la gestion du stress, les émotions, le burn-out, le deuil, les relations familiales - sentimentales - professionnelles, l'angoisse existentielle. Ma posture est relationnelle (Gestalt-thérapie) où la prise en compte de ce qui émerge dans la séance est primordial. Le cabinet est un lieu sécurisé pour se rencontrer soi-même avec le soutien du thérapeute, soutenir / exprimer ses émotions, oser sentir et ressentir, ouvrir ses horizons pour grandir dans son être au monde."
d21.phone = "0631531678"
d21.save!


d22 = User.new
d22.civility = "M."
d22.first_name = "Laurent"
d22.last_name = "Outan"
d22.email = "docteur22@gmail.com"
d22.password = "123456"
d22.password_confirmation = "123456"
d22.is_pro = true
avatar_docteur_male = Down.download('https://c8.alamy.com/compfr/p6j0jx/beau-portrait-d-homme-de-45-ans-avec-des-lunettes-p6j0jx.jpg')
d22.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d22.description = "Vous accompagner lors d'une crise d'anxiété, de stress, d'une période de deuil ou de tristesse profonde, d'un surmenage important reste pour moi une priorité. La démarche vers une consultation est courageuse et respectable. De venir partager sa souffrance permet souvent de la surmonter et d'accepter ce que l'on ne peut pas changer. Parler de soi avec sincérité et profondeur est un exercice difficile. Je suis ainsi toujours attentionné dans l’écoute, le partage, les émotions de la ou des personnes qui se trouvent face à moi et cela, sans jugement aucun. Venez simplement parler."
d22.phone = "0685431183"
d22.save!

d23 = User.new
d23.civility = "Mme"
d23.first_name = "Nadine"
d23.last_name = "Amaud"
d23.email = "docteur23@gmail.com"
d23.password = "123456"
d23.password_confirmation = "123456"
d23.is_pro = true
avatar_docteur_female = Down.download("https://lh5.googleusercontent.com/proxy/MtGBW5HCqI6sk3ZrEZjSJhWcg8TrDSFFUxVHlJc6BTf0Ok0T3Szij5nGLEvqFE8i2fpkBO3_sjHGqE044x-c20TkCaJ5hQqiVp0xkw")
d23.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d23.description = "Je suis thérapeute en Analyse Psycho-Organique (APO) qui est une approche psycho-corporelle de la psychothérapie. Je propose un travail en profondeur dans une philosophie d'autonomie des patients dans leur processus thérapeutique. Ayant chacun une histoire unique, je les accompagne et les aide à (re)trouver leur élan de vie, leur identité, leur propre créativité.  Ayant des connaissances approfondies dans les Addictions (alcool, tabac, drogues illicites, médicaments, sexe, jeux, co-dépendances...), je soutiens la personne ayant cette problématique, à retrouver son autonomie et sa liberté de choisir. J’accueille aussi les adolescents. Etant bilingue français-anglais, je reçois également des anglophones. J'anime des groupes thérapeutiques, qui est un travail en complément d'une thérapie individuelle. Avec le confinement dû à la pandémie du COVID-19, je reçois à distance par skype ou zoom ou par téléphone selon ce qui est le plus confortable pour vous."
d23.phone = "0673556461"
d23.save!

d24 = User.new
d24.civility = "Mme"
d24.first_name = "Sylvie"
d24.last_name = "Céquillet Pamaur"
d24.email = "docteur24@gmail.com"
d24.password = "123456"
d24.password_confirmation = "123456"
d24.is_pro = true
avatar_docteur_female = Down.download("https://lh4.googleusercontent.com/proxy/uZ92SFJTtIi7CE3GLlDvIjYxBBB4nU_TJ8sbszHe1DYCYiycf-eB_JfQrIWoQSe5UcbW1VJ3EKsr1u1yujvq8WXVaUfE25w8YrpaOg")
d24.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d24.description = "Pourquoi une psychothérapie ? Si les raisons sont multiples, la souffrance est toujours présente. Quand elle est trop forte, elle se manifeste sous forme de symptômes sommatiques ou comportementals qui viennent perturber le sujet malgré la volonté et les démarches pour tenter de les faire cesser. Dans un premier temps, la psychothérapie est une invitation à prendre conscience des différents aspects de l’expérience vécue, de découvrir les significations inconscientes des symptômes et de mettre les mots sur les maux. L’objectif est de mieux vivre en étant pleinement sujet avec la singularité de ce que l’on porte dans son histoire et avec ce que nous vivons aujourd'hui. Je vous vous accompagne, également, dans votre position d'aidant auprès d'un proche qui souffre d'un TCA ou de maladies liées au vieillissement."
d24.phone = "0764169333"
d24.save!

d25 = User.new
d25.civility = "M."
d25.first_name = "René"
d25.last_name = "Auphrigot"
d25.email = "docteur25@gmail.com"
d25.password = "123456"
d25.password_confirmation = "123456"
d25.is_pro = true
avatar_docteur_female = Down.download("https://mediaslide-europe.storage.googleapis.com/privilege/pictures/1429/1429/profile-1559202559-dea9767739774f6c5921095b7aa37ffe.jpg")
d25.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d25.description = "La psychothérapie est avant tout une vocation et un désir d'aider l'autrui, je me suis engagée dans cette voie consciente du bien que je peux apporter aux personnes dans le besoin. Cela fait plus de 10 ans que je me forme et pratique la psychothérapie à travers les approches d'Analyse Transactionnelle et de Gestalt"
d25.phone = "0760365935"
d25.save!

d26 = User.new
d26.civility = "M."
d26.first_name = "Richard"
d26.last_name = "Dassault"
d26.email = "docteur26@gmail.com"
d26.password = "123456"
d26.password_confirmation = "123456"
d26.is_pro = true
avatar_docteur_male = Down.download('https://www.raoul-gilibert.com/wp-content/uploads/2016/01/portrait-homme-studio-corporate-lorraine-metz-012-705x529.jpg')
d26.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d26.description = "Séance par Vidéo conférence assurée, Skype, Whatsapp, Zoom. Je suis praticien en Analyse psycho-organique (APO), titulaire du CEP (certificat européen de psychothérapie). Cette méthode mise au point par Paul BOYESEN est au carrefour de la psychanalyse, des thérapies Corporelles et des psychothérapies “humanistes existentielles”. On vient en thérapie pour changer. Je m’engage à vous soutenir dans cet élan en respectant votre identité, votre différence, votre unicité et ce, avec bienveillance, respect, et dans un cadre sécurisant. Parlons-en… La thérapie c’est : s’offrir la possibilité d’un rendez-vous avec soi-même, que ce soit pour y déposer ses souffrances, les comprendre ou les dépasser. C’est aussi la possibilité de s’accorder un chemin de liberté, de croissance. Elle permet de devenir auteur et acteur de son histoire. Parlons-en… Osez, je vous écoute"
d26.phone = "0778257319"
d26.save!

d27 = User.new
d27.civility = "M."
d27.first_name = "Tarek"
d27.last_name = "Tiffier"
d27.email = "docteur27@gmail.com"
d27.password = "123456"
d27.password_confirmation = "123456"
d27.is_pro = true
avatar_docteur_female = Down.download("https://images.squarespace-cdn.com/content/v1/55598819e4b0447c46e6f458/1580632016430-BXX3QGSGNOCKYAB31YEZ/ke17ZwdGBToddI8pDm48kEBMGM6iHhnTrNlNytCwGTYUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8GRo6ASst2s6pLvNAu_PZdIfL19ZfZNuBzAIPktgBYnp691jkgq0WcwQ_8Fnb_YoH5MAWwl9OcEjya9Q19H00x0/04.jpg")
d27.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d27.description = "Envisager une psychothérapie a du sens si vous éprouvez une difficulté qu’il vous est difficile d’affronter tout(e) seul(e). Que ce soit un cap de vie difficile à passer ou un problème récurrent qui vous fait souffrir et qui entrave la qualité de votre vie. Les premières séances vous permettront d’évaluer si je vous conviens pour vous accompagner et de mon côté elles me permettront d’évaluer ma compétence à vous accompagner. Nous nous mettrons d’accord sur ce que vous voulez pour vous et sur la fréquence de nos rendez-vous. Concrètement, nous serons assis face à face, vous apportez ce qui vous tracasse et nous démêlons cela ensemble. Dans cet échange, les émotions ont droit de cité ainsi que le corps dans toutes ses expressions (ressentis, douleurs, tensions, mouvements). Dans un travail plus avancé, la dimension de notre relation pourra prendre une place particulière et sera une voie de résolution pour d’éventuels problèmes relationnels."
d27.phone = "0619057051"
d27.save!

d28 = User.new
d28.civility = "M."
d28.first_name = "Yves"
d28.last_name = "Hapabien"
d28.email = "docteur28@gmail.com"
d28.password = "123456"
d28.password_confirmation = "123456"
d28.is_pro = true
avatar_docteur_female = Down.download("https://www.cedric-derbaise.com/wp-content/uploads/2018/10/Photographe-Entreprise-Portrait-Corporate-Book-Homme.jpg")
d28.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d28.description = "Psycho-praticienne, Gestalt Thérapeute certifiée par l'Institut Français de Formation Psychocorporelle de Triel sur Seine (78) Issue d'un parcours jalonné d'expériences, de formations, et d'une longue carrière dans une structure médico-psycho-sociale, je vous accompagne sans jugement et avec toute ma bienveillance dans une période de votre vie pour aller vers ce dont vous aurez besoin : un mieux être, un soutien, un éclairage, ou à redevenir acteur de votre vie. J'utilise la thérapie Gestalt, l'EMDR, la Communication non violente, la méthode Faber et Mazlish pour les relations familiales."
d28.phone = "0620975809"
d28.save!

d29 = User.new
d29.civility = "M."
d29.first_name = "Ramon"
d29.last_name = "Lacheminée"
d29.email = "docteur29@gmail.com"
d29.password = "123456"
d29.password_confirmation = "123456"
d29.is_pro = true
avatar_docteur_female = Down.download("https://www.raoul-gilibert.com/wp-content/uploads/2015/04/portrait-homme-corporate-lorraine-nancy-023.jpg")
d29.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d29.description = "Je vous reçois à mon Cabinet, en ligne et par téléphone. Prendre RDV sur Doctolib. Je propose: - des consultations de psychothérapies aux enfants, adolescents, adultes, famille et couple, pour de nombreuses problématiques: dépression, mal être, burn out, manque de confiance en soi, phobies, angoisse, anxiété,TDHA, Autismes (Asperger, ..), douance, ....; - des passations de Tests de QI pour enfants, adolescents et adultes (WAIS IV et WISC V); - du coaching de vie et professionnel. J'organise un samedi par mois des ateliers de gestion des émotions avec pratique de l'attention, ainsi que des ateliers de Philosophie aux enfants de 6 à 11 ans (programme sur mon site internet)."
d29.phone = "0698295565"
d29.save!

d30 = User.new
d30.civility = "M."
d30.first_name = "Sachat"
d30.last_name = "Hute"
d30.email = "docteur30@gmail.com"
d30.password = "123456"
d30.password_confirmation = "123456"
d30.is_pro = true
avatar_docteur_male = Down.download('https://www.sylvain-beucherie.com/wp-content/uploads/2015/01/sylvain-beucherie-photographe-corporate-studio-nancy26.jpg')
d30.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d30.description = "Je vous accueille dans mon cabinet à Paris 20. Je travaille également en psychiatrie à l'hôpital Tenon et en secteur associatif. Je suis psychopraticien en relation d'aide, art-thérapeute, médiateur artistique, formé à l'INECAT, diplômé de 3e cycle de l'Université Paris X Nanterre. Auteur-réalisateur, photographe et musicien, je me suis longuement formé à l'art-thérapie pour accompagner par la création des patients ayant des problématiques comme le psychotraumatisme, les addictions, l'anxiété, les troubles de la personnalité et les problèmes sexuels ou relationnels. L'art-thérapie est une thérapie qui privilégie, outre le langage, la création artistique comme moteur de symbolisation. Le corps est mobilisé dans un travail sur les sensations, les émotions et les pensées, pour quitter les répétitions qui font souffrir, dépasser ses blocages et retrouver de la confiance en soi, une communication fluide et des relations sereines. C'est à dire, redevenir sujet de son existence."
d30.phone = "0768707612"
d30.save!

d31 = User.new
d31.civility = "M."
d31.first_name = "Dr."
d31.last_name = "House"
d31.email = "docteur31@gmail.com"
d31.password = "123456"
d31.password_confirmation = "123456"
d31.is_pro = true
avatar_docteur_male = Down.download('https://cdn-s-www.leprogres.fr/images/8DCDA839-102A-47A2-9EDB-131571C78A20/NW_detail_M/title-1576680650.jpg')
d31.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d31.description = "C'est un lupus !"
d31.phone = "0656783698"
d31.save!


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
job4 = Job.new(user: d3, job_name: jobs_array[21])
job4.save!
job4 = Job.new(user: d4, job_name: jobs_array[22])
job4.save!
job4 = Job.new(user: d5, job_name: jobs_array[2])
job4.save!
job4 = Job.new(user: d6, job_name: jobs_array[3])
job4.save!
job4 = Job.new(user: d7, job_name: jobs_array[10])
job4.save!
job4 = Job.new(user: d8, job_name: jobs_array[12])
job4.save!
job4 = Job.new(user: d9, job_name: jobs_array[11])
job4.save!
job4 = Job.new(user: d10, job_name: jobs_array[14])
job4.save!
job4 = Job.new(user: d11, job_name: jobs_array[18])
job4.save!
job4 = Job.new(user: d12, job_name: jobs_array[20])
job4.save!
job4 = Job.new(user: d13, job_name: jobs_array[21])
job4.save!
p "#{Job.count} jobs crées"



# Activity
activity1 = Activity.new
activity1.user = d1
activity1.speciality_id = s8.id
activity1.office_id = office1.id
activity1.save!

activity2 = Activity.new
activity2.user = d2
activity2.speciality_id = s10.id
activity2.office_id = office2.id
activity2.save!

activity3 = Activity.new
activity3.user = d3
activity3.speciality_id = s8.id
activity3.office_id = office3.id
activity3.save!

# BEAUVAIS
activity4 = Activity.new
activity4.user = d4
activity4.speciality_id = s8.id
activity4.office_id = office1.id
activity4.save!

activity5 = Activity.new
activity5.user = d5
activity5.speciality_id = s8.id
activity5.office_id = office4.id
activity5.save!

activity6 = Activity.new
activity6.user = d6
activity6.speciality_id = s8.id
activity6.office_id = office5.id
activity6.save!

activity7 = Activity.new
activity7.user = d7
activity7.speciality_id = s8.id
activity7.office_id = office6.id
activity7.save!

activity8 = Activity.new
activity8.user = d8
activity8.speciality_id = s10.id
activity8.office_id = office7.id
activity8.save!

activity9 = Activity.new
activity9.user = d9
activity9.speciality_id = s10.id
activity9.office_id = office9.id
activity9.save!

activity10 = Activity.new
activity10.user = d10
activity10.speciality_id = s10.id
activity10.office_id = office10.id
activity10.save!

activity11 = Activity.new
activity11.user = d11
activity11.speciality_id = s10.id
activity11.office_id = office1.id
activity11.save!

activity12 = Activity.new
activity12.user = d12
activity12.speciality_id = s10.id
activity12.office_id = office2.id
activity12.save!

activity13 = Activity.new
activity13.user = d13
activity13.speciality_id = s10.id
activity13.office_id = office3.id
activity13.save!

activity14 = Activity.new
activity14.user = d14
activity14.speciality_id = s10.id
activity14.office_id = office4.id
activity14.save!

activity15 = Activity.new
activity15.user = d15
activity15.speciality_id = s10.id
activity15.office_id = office5.id
activity15.save!

activity16 = Activity.new
activity16.user = d16
activity16.speciality_id = s10.id
activity16.office_id = office6.id
activity16.save!

activity17 = Activity.new
activity17.user = d17
activity17.speciality_id = s10.id
activity17.office_id = office6.id
activity17.save!

activity18 = Activity.new
activity18.user = d18
activity18.speciality_id = s10.id
activity18.office_id = office6.id
activity18.save!

activity19 = Activity.new
activity19.user = d19
activity19.speciality_id = s10.id
activity19.office_id = office6.id
activity19.save!

activity20 = Activity.new
activity20.user = d20
activity20.speciality_id = s10.id
activity20.office_id = office7.id
activity20.save!

activity21 = Activity.new
activity21.user = d21
activity21.speciality_id = s10.id
activity21.office_id = office7.id
activity21.save!

activity22 = Activity.new
activity22.user = d22
activity22.speciality_id = s10.id
activity22.office_id = office7.id
activity22.save!

activity23 = Activity.new
activity23.user = d23
activity23.speciality_id = s10.id
activity23.office_id = office8.id
activity23.save!

activity24 = Activity.new
activity24.user = d24
activity24.speciality_id = s10.id
activity24.office_id = office8.id
activity24.save!

activity25 = Activity.new
activity25.user = d25
activity25.speciality_id = s8.id
activity25.office_id = office8.id
activity25.save!

activity26 = Activity.new
activity26.user = d26
activity26.speciality_id = s10.id
activity26.office_id = office9.id
activity26.save!

activity27 = Activity.new
activity27.user = d27
activity27.speciality_id = s10.id
activity27.office_id = office9.id
activity27.save!

activity28 = Activity.new
activity28.user = d28
activity28.speciality_id = s10.id
activity28.office_id = office9.id
activity28.save!

activity29 = Activity.new
activity29.user = d29
activity29.speciality_id = s10.id
activity29.office_id = office10.id
activity29.save!

activity30 = Activity.new
activity30.user = d30
activity30.speciality_id = s10.id
activity30.office_id = office10.id
activity30.save!

activity31 = Activity.new
activity31.user = d31
activity31.speciality_id = s10.id
activity31.office_id = office10.id
activity31.save!

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
