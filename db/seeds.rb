# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require "open-uri"
require "down"





p "cleaning database"
Consultation.destroy_all
Activity.destroy_all
Job.destroy_all
Address.destroy_all
Speciality.destroy_all
Office.destroy_all
User.destroy_all


# Create avatars
# avatar_docteur_male = URI.open("https://res.cloudinary.com/dewwle39t/image/upload/v1592053472/ma-seance/docteur2_krnjuk.jpg")
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

p "#{Speciality.count} spécialités créées"


# addresses
address1 = Address.new(street: "D 568 La carrairade Bat C", zip_code: "13740", city: "LE ROVE")
address1.save!
address2 = Address.new(street: "22 boulevard Sébastopol", zip_code: "75004", city: "PARIS 04")
address2.save!
address3 = Address.new(street: "1 rue Georges Clémenceau", zip_code: "24100", city: "BERGERAC")
address3.save!
address4 = Address.new(street: "35, allée de Bellevue", zip_code: "94170", city: "LE PERREUX SUR MARNE")
address4.save!
# address5 = Address.new (street: "", zip_code: "", city: "")

p "#{Address.count} adresses créées"

# offices
office1 = Office.new(name: "TranssAnalyse", address_id: address4.id)
office1.save!
office2 = Office.new(name: "Les Halles", address_id: address3.id)
office2.save!

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
#f.avatar.attach(io: avatar_patient, filename: 'avatarf.jpg', content_type: 'image/jpg')
f.save!

b = User.new
b.civility = "M."
b.first_name = "Barnabé"
b.last_name = "Dubus"
b.email = "barnabe.dubus@gmail.com"
b.password = "123456"
b.password_confirmation = "123456"
b.is_pro = false
#b.avatar.attach(io: avatar_patient, filename: 'avatarb.jpg', content_type: 'image/jpg')
#b.avatar = f.avatar

b.save!

s = User.new
s.civility = "M."
s.first_name = "Shaun"
s.last_name = "O Graham"
s.email = "shaun.o.graham@gmail.com"
s.password = "123456"
s.password_confirmation = "123456"
s.is_pro = false
#s.avatar.attach(io: avatar_patient, filename: 'avatars.jpg', content_type: 'image/jpg')
s.save!

m = User.new
m.civility = "Mme"
m.first_name = "Myriam"
m.last_name = "de Bossoreille"
m.email = "myriam.dbdr@gmail.com"
m.password = "123456"
m.password_confirmation = "123456"
m.is_pro = false
#m.avatar.attach(io: avatar_patient, filename: 'avatarm.jpg', content_type: 'image/jpg')
m.save!

d1 = User.new
d1.civility = "M."
d1.first_name = "Jean"
d1.last_name = "Coucou"
d1.email = "docteur1@gmail.com"
d1.password = "123456"
d1.password_confirmation = "123456"
d1.is_pro = true
d1.avatar.attach(io: avatar_docteur_male, filename: 'avatar_docteur_male.jpg', content_type: 'image/jpg')
d1.description = "Je suis un professionnel de la santé titulaire d'un diplôme de docteur en médecine et d'un diplôme d'État de docteur en médecine. Je soigne les maladies, pathologies et blessures."
d1.save!

d2 = User.new
d2.civility = "Mme"
d2.first_name = "Céline"
d2.last_name = "Boiteux"
d2.email = "docteur2@gmail.com"
d2.password = "123456"
d2.password_confirmation = "123456"
d2.is_pro = true
d2.avatar.attach(io: avatar_docteur_female, filename: 'avatar_docteur_female.jpg', content_type: 'image/jpg')
d2.description = "Je traite vos problèmes posés dans l'exercice de la sexualité, que ce soit avant le rapport ou durant le rapport"
d2.save!

p1 = User.new
p1.civility = "M."
p1.first_name = "Marcel"
p1.last_name = "Déprime"
p1.email = "patient1@gmail.com"
p1.password = "123456"
p1.password_confirmation = "123456"
p1.is_pro = false
p1.avatar.attach(io: avatar_patient, filename: 'avatarp1.jpg', content_type: 'image/jpg')
p1.save!

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

p "#{Activity.count} activités créées"



# Consultation
consultation1 = Consultation.new
consultation1.activity = activity1
consultation1.user = p1
consultation1.date = "2020-07-17"
consultation1.save!

p "#{Consultation.count} activités créées"
