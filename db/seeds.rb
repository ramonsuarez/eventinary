## First clean so no repeated objects
Booking.destroy_all
Event.destroy_all
Organization.destroy_all
User.destroy_all

# Seed : Users, Organizations, Events and Bookings

###########
# USERS
###########

u1 = User.create(
  first_name: "Michel",
  last_name: "Duchateau",
  address: "Rue de peres blancs 4, 1040, Etterbeek, Brussels, Belgium",
  phone: "+3212345678",
  email:"michel@eventinary.com",
  password: "michelduchateau"
  )
u1.avatar =  open("https://media.licdn.com/media/AAEAAQAAAAAAAARLAAAAJGEwOWFmMWIyLTQzNDMtNGMwNy1hYzQyLTQ2ZGVlMWVjNDFiNQ.jpg", "r")
u1.save

p "User id #{u1.id}"

u2 = User.create(
  first_name: "Sara",
  last_name: "Magnabosco",
  address: "rue de pères blancs 4, 1040, brussels",
  phone: "+32 2 737 67 69",
  email:"sara@eventinary.com",
  password: "saramagnabosco"
  )
u2.avatar =  open("https://media.licdn.com/media/AAEAAQAAAAAAAAgpAAAAJDI2ZjY1M2I5LTVmNmMtNDM0ZS05MjI5LTA2OWVhZjI1Y2ZiOA.jpg", "r")
u2.save

p "User id #{u2.id}"

u3 = User.create(
  first_name: "Gabriela",
  last_name: "Fernandez",
  address: "Rue de peres blancs 4, 1040, Etterbeek, Brussels, Belgium",
  phone: "+322 7376772",
  email:"gabriela@startups.be",
  password: "gabrielafernandez"
  )
u3.avatar =  open("https://startups.be/storage/app/uploads/public/57d/810/088/thumb_3837_500x500_0_0_crop.jpg", "r")
u3.save

p "User id #{u3.id}"

u4 = User.create(
  first_name: "Alessandra",
  last_name: "Gambrill - Guion",
  address: "Rue Jules Cockx-straat, 8-10 bte2 – 1160 Brussels",
  phone: "(+32) 479 27 29 29",
  email:"alessandra@eventinary.com",
  password: "alessandragambrill"
  )
u4.avatar =  open("https://media.licdn.com/media/p/1/000/101/03e/2f8e95c.jpg", "r")
u4.save

p "User id #{u4.id}"

u5 = User.create(
  first_name: "Ramon",
  last_name: "Suarez",
  address: "Rue de peres blancs 4, 1040, Etterbeek, Brussels, Belgium",
  phone: "(+32) 2 7376769",
  email:"ramon@betacowork.com",
  password: "ramonsuarez"
  )
u5.avatar =  open("https://assets.about.me/background/users/r/a/m/ramonsuarez_1370275885_29.jpg", "r")
u5.save

p "User id #{u5.id}"

u6 = User.create(
  first_name: "Luciana",
  last_name: "Diehl",
  address: "Gra1234567",
  email:"lu.diehl@gmail.com",
  password: "lucianadiehl"
  )
u6.avatar =  open("https://avatars1.githubusercontent.com/u/22883140?v=3&s=400", "r")
u6.save

p "User id #{u6.id}"

u7 = User.create(
  first_name: "Luay",
  last_name: "Adam",
  address: "jette, Brussels",
  phone: "(+32) 12345678",
  email:"luay985@gmail.com",
  password: "luayadam"
  )
u7.avatar =  open("https://ramonsuarez.files.wordpress.com/2200/03/luay.jpg", "r")
u7.save

p "User id #{u7.id}"

u8 = User.create(
  first_name: "Dugagjin",
  last_name: "Ramani",
  address: "Rue Jules Cockx-straat, 8-10 bte2 – 1160 Brussels",
  phone: "(+32) 234567854",
  email:"r.dugzino@gmail.com ",
  password: "dugagjinramani"
  )
u8.avatar =  open("https://avatars2.githubusercontent.com/u/3817430?v=3&s=400", "r")
u8.save

p "User id #{u8.id}"

u9 = User.create(
  first_name: "Anne",
  last_name: "Collet",
  address: "Parvis Sainte-Gudule 5, 1000 Bruxelles",
  phone: "(+32) 476 785 764",
  email:"anne@lewagon.org",
  password: "annecollet"
  )
u9.avatar =  open("https://a248.e.akamai.net/secure.meetupstatic.com/photos/member/4/1/8/e/member_222256782.jpeg", "r")
u9.save

p "User id #{u9.id}"

u10 = User.create(
  first_name: "Martin",
  last_name: "Van Aken",
  address: "Internet, Brussels",
  phone: "(+32) 123456973",
  email:"martin@eventinary.com",
  password: "martinvanaken"
  )
u10.avatar =  open("https://pbs.twimg.com/profile_images/378800000551111238/934851994d52ee9f4d7dab8a5c7420c9_400x400.png", "r")
u10.save

p "User id #{u10.id}"


###########
# ORGANIZATIONS
###########

o1 = Organization.create!(
  name: "Startup Weekend Brussels",
  url: "brussels.startupweekend.org",
  description: "Where Brussels comes to build skills, meet incredible people, and launch successful startups",
  email: "swbru@gmail.com",
  phone: "32484848484"
)

o1.logo =  open("http://brussels.startupweekend.org/files/2014/05/SWBRU_Logo1-1024x390.jpg", "r")
#adding user to organization - I have used the same user for all organizations,
# but different organizations created different event - I haven't tested the dashboard
o1.user = u1
o1.save

p "Organization id #{o1.id}"

o2 = Organization.create!(
  name: "Betacowork Coworking Brussels",
  url: "http://www.betacowork.com",
  description: "Shared office coworking space in Brussels, for professionals and entrepreneurs. Much more than a business center. Startup & geek friendly professional network.",
  email: "support@betacowork.com",
  phone: "02 737 67 69"
)

o2.logo =  open("http://railsgirls.com/images/brussels/betacowork-coworking.png", "r")
o2.user = u2

o2.save

p "Organization id #{o2.id}"

o3 = Organization.create!(
  name: "Startups.be",
  url: "startups.be",
  description: "We’re the one stop shop for Belgian tech entrepreneurs....Connecting the dots. Representing the startup community. Unlocking expertise & talent",
  email: "events@startups.be",
  phone: ""
)

o3.logo =  open("http://www.bene.be/images/uploads/blog/cache/work-logo-500-01-500x353.png", "r")
o3.user = u3
o3.save

p "Organization id #{o3.id}"

o4 = Organization.create!(
  name: "Fintech Belgium",
  url: "http://fintechbelgium.be",
  description: "The first and biggest community of Fintechers in Belgium

FinTech Belgium is the first and biggest community of Fintechers in Belgium.

We are a community for financial professionals, startup entrepreneurs and investors, who are interested in discovering and discussing disruptive business models and new technology for the financial services industry.

Fintech Belgium is a federation for and by its members.",
  email: "info@fintechbelgium.be",
  phone: "(+32) 479 27 29 29"
)

o4.logo =  open("https://pbs.twimg.com/media/CwQ6ljHWYAAsO5h.jpg", "r")
o4.user = u4
o4.save

p "Organization id #{o4.id}"


o5 = Organization.create!(
  name: "Le Wagon Brussels",
  url: "https://www.lewagon.com/brussels",
  description: "Working as a junior developer for Stripe, Algolia, Molotov, Save, Compass, 55, Save, etc.. We will help you find your dream job, either as a junior dev, product manager or growth hacker. Discuss with any of our alumni to find out more!",
  email: "anne@lewagon.org",
  phone: "(+32) 479 27 29 29"
)

o5.logo =  open("http://www.technologium.be/wp-content/uploads/2015/03/logo-f800df98aa2605c552400667353f47d2.png", "r")
o5.user = u9
o5.save

p "Organization id #{o5.id}"

o6 = Organization.create!(
  name: "Code Station SPRL",
  url: "https://www.lewagon.com/brussels",
  description: "Programming education and promotion",
  email: "anne@lewagon.org",
  phone: "(+32) 479 27 29 29"
)

o6.logo =  open("http://www.technologium.be/wp-content/uploads/2015/03/logo-f800df98aa2605c552400667353f47d2.png", "r")
o6.user = u9
o6.save

p "Organization id #{o6.id}"

o7 = Organization.create!(
  name: "Techies Lab",
  url: "http://techieslab.org",
  description: "We teach kids to code webpages with their parents",
  email: "anne@techieaslab.org",
  phone: "(+32) 479 27 29 29"
)

o7.logo =  open("http://techieslab.org/assets/images/logo/robot-1d741827.png", "r")
o7.user = u9
o7.save

p "Organization id #{o7.id}"


###########
# EVENTS
###########

 e1 = Event.create(
   title: "Startup Weekend Brussels FinTech" ,
   offline: true,
   online_url: "",
   venue: "co.station",
   address: "Parvis Sainte-Gudule 5, 1000 Bruxelles",
   start: "Fri, 9 Oct 2017 18:00:00 UTC +00:00",
   end: "Sun, 11 Oct 2017 20:00:00 UTC +00:00",
   description: "Brace yourselves, Belgium's first ever FinTech Startup Weekend is here - bringing the FinTech movement to the Capital of Europe! Financial technology, also known as FinTech, is using software to provide financial services. FinTech companies are generally startups founded with the purpose of disrupting incumbent financial systems and providing services such as mobile payments, money transfers, loans, fundraising and even asset management. You too, can be a Fintech innovator, whatever your background, and a Startup Weekend Maker is an excellent place to start. You will have access to financial experts, software packages, and open source innovation to prototype your idea. You will: Pitch your idea (if you want to; its an open stage format) Form a team around an idea and make it real Get grilled and coached by some of the toughest industry experts Present to a panel of expert judges and win amazing prizes Test the limits of sleeplessness ;) This will be the 1st event of its kind in Belgium where the local startup ecosystem will join in for a three day marathon of co-creation, making and growth-hacking! Check out the Startup Weekend trailer here and a first-timer's experience here. Given the elaborate set up involved, places are limited so book your spot NOW! All Startup Weekend events follow the same basic model: anyone is welcome to pitch their startup idea and receive feedback from their peers. Teams organically form around the top ideas (as determined by popular vote) and then it’s a weekend frenzy of business model creation, product designing, prototyping, business coaching and market validation. The weekends culminate with presentations in front of local entrepreneurial leaders with another opportunity for critical feedback. It isn’t always pretty. It will be challenging and can be grueling. But, if you can stick it out, you will have gained the equivalent of months worth of learning, building, and networking in one weekend. Hell, you might even start your first company! Whether you start companies, find a co-founder, meet someone new, or learn a skill far outside the usual 9-to-5, everyone is guaranteed to leave the event better prepared to navigate the chaotic but fun world of startups. The event will be held in English. The venue is quiet central so there will be a lot of hostel options around too. Check out www.hostelsclub.com and www.hostelworld.com for hostel options, and www.airbnb.com for apartments. Looking forward to seeing you all there! Team SW Brussels FinTech _________________________________ Refund Policy: No refunds will be granted within 7 days of the event as food and drinks are already ordered by then. About Startup Weekend: Startup Weekends are weekend events designed to provide superior experiential education for technical and non-technical entrepreneurs. Beginning with Friday night pitches and continuing through brainstorming, business plan development, and basic prototype creation, Startup Weekends culminate in Sunday night demos and presentations. Participants create working startups during the event and are able to collaborate with like-minded individuals outside of their daily networks. All teams hear talks by industry leaders and receive valuable feedback from local entrepreneurials. The weekend is centered around action, innovation, and education. Whether you are looking for feedback on a idea, a co-founder, specific skill sets, or a team to help you execute, Startup Weekends are the perfect environment in which to test your idea and take the first steps towards launching your own startup. Terms of Participation Agreement: It is our job to provide you with an incredible networking and learning opportunity. Our intention is that you meet some amazing people that you might actually start a company with, build relationships with coaches, and learn from your peers. The event is intended to be a collaborative forum for sharing, learning, building, and having fun. As such, by registering as a participant, you acknowledge that any ideas shared by you or anyone else over the course of the event are contributions to the overall experience and community. If you as a participant are worried about someone stealing your ideas, please reconsider your participation in the event itself or simply refrain from sharing specifics about your idea. As a member of your startup community, you agree to to be inclusive of any and all people and their ideas. You agree to act professionally, treat everyone with respect, and treat the event facilities with proper care. You agree that you are responsible for any accidents or damages that you cause. You also agree to not hold Startup Weekend, your local volunteer team, or any of the event supporters liable for any loss, damage, injury, or any other unforeseeable incident. By participating in the Startup Weekend, each Participant grants STARTUP WEEKEND and its licensees, successors and assigns a non-exclusive, perpetual, non-cancelable, royalty free, fully paid up, worldwide right and license to edit, modify, adapt, translate, exhibit, publish, transmit, participate in the transfer of, reproduce, copy, create derivative works from, distribute, perform, display and otherwise use all and/or any part of such Participant’s names, likenesses, photographs, voices and images of all persons referenced and/or appearing in materials generated at the event, without limitation, anywhere in the world in any form (tangible or intangible, permanent or ephemeral, including, without limitation, audio, video, print, electronic, written, and photographic) and via any transmission medium (including, without limitation, television, radio, Internet, and print) now existing or that may exist in the future for advertising, trade, promotion, publicity and other related purposes without compensation and without notice to or consideration, review or approval from Participant. Each Participant further agrees to (i) be questioned or interviewed (whether in person or by other means such as email or phone), filmed and/or photographed and available for interviewing, filming, photography and for other public relations, marketing and promotional activities associated with the Event, as reasonably required and directed by STARTUP WEEKEND, (ii) allow STARTUP WEEKEND to make contact with the Participant (whether in person, by phone, email or otherwise) for the purpose of requesting further information from the Participant in relation to their participation or for any other purpose related to the Startup Weekend. Each Participant represents and warrants that neither its participation, nor STARTUP WEEKEND’s exercise of any of the rights granted to it under these Terms will (a) infringe or violate any rights of any third party or entity, including, without limitation, those relating to patents, copyrights, trademarks, trade secrets, moral rights, mask works, defamation, privacy, publicity, false light, misappropriation, confidentiality, and/or any contractual or other rights recognizable under any applicable law, rule, regulation, ordinance, judgment or decree (collectively, “Law”), or (b) otherwise violate any applicable Law. By submitting your information above you agree to the UP.co family of website's Privacy Policy, and you consent to receive email communication from UP Global and its programs about events and updates that may interest you.",
   quantity: 100,
   penalty_fee: 99,
   cancellation_policy: "Strict",
   public: true,
   price: 0
 )

e1.image =  open("https://ramonsuarez.files.wordpress.com/2200/03/fintech.jpg", "r")
#adding an organization to an event
e1.organization = o1
e1.save

p "Event id #{e1.id}"

e2 = Event.create(
   title: "Say Yes! Speed up agile adoption with Improv games – Workshop" ,
   offline: true,
   venue: "Betacowork Coworking Brussels",
   address: "Rue de pères blancs 4",
   start: "Fri, 16 Oct 2017 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2017 20:00:00 UTC +00:00",
   description: "What will you do?play-stone-1237458_1280 Ice-breaker & Intro 5 minutes recap’ on Agile principles + 5 minutes recap on Improv principles Agile principles and improv tips and tricks: why & how do they cross-fertilize each other? Warm-up A few quick and easy improv warm-up exercises, to get you going and break the ice. The (not so) serious stuff We will go through some of the most well-known improv games (the robot game, saying yes, etc), explain what purpose they serve and how they relate and can be leveraged in your to agile practice. Wrap-up & take-away’s When and Where? Thursday 24th of November from 7PM to 9.30PM in Room Azzar (ICAB Business & Technology Incubator). Powered by Eventbrite David Zöllner – Digital Learning Specialist David is a digital learning specialist who uses playfulness, fun and curiosity to create engaging and motivating trainings which target business objectives. During the past years, he developed many game-based online business trainings for various market leading companies. For the development of his concepts, he uses profound knowledge of learning methods, his experience with corporate training structures and also his passion for games, narratives and improvisational theatre.",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Moderate",
   public: true,
   price: 0
 )

e2.image =  open("http://www.betacowork.com/wp-content/uploads/The-Global-Lens%E2%84%A2-Betacowork-Staff-8008074-6.jpg", "r")
#adding an organization to an event
e2.organization = o2
e2.save

p "Event id #{e2.id}"

e3 = Event.create(
title: "Tech Startup Day" ,
offline: true,
venue: "The egg",
address: "Rue Bara, Brussels",
start: "Thu, 9 Mar 2017 09:00:00 UTC +00:00",
end: "Thu, 9 Mar 2017 20:00:00 UTC +00:00",
description: "Expect a massive gathering of the key players in the Belgian startup ecosystem and meet with the exact right people.

On March 9th 2017, over 1.000 attendees will join the most complete and inspiring conference of the year.
Hands-on inspiration & value adding networking for anyone involved
in tech entrepreneurship !


With the entire startup scene present, Tech Startup Day is the Belgian must attend event for all tech entrepreneurs & corporate innovators, providing you with inspiration, hands-on examples and testimonials and lots of relevant contacts allowing you to take your entrepreneurial project to the next level.",
quantity: 800,
penalty_fee: 250,
cancellation_policy: "Moderate",
public: true,
price: 0
)

e3.image =  open("http://www.theeggbrussels.com/wp-content/uploads/2016/03/Tech-Startup-Days-3.jpg", "r")
#adding an organization to an event
e3.organization = o3
e3.save

p "Event id #{e3.id}"

e4 = Event.create(
title: "How FinTechs can lower their Customer Acquisition Cost – MEETUP
" ,
offline: true,
venue: "European Banking Federation",
address: "Kunstlaan 56 Avenue des Arts – 1000 Brussels",
start: "Thu, 22 12 2017 18:00:00 UTC +00:00",
end: "Thu, 22 12 2017 20:00:00 UTC +00:00",
description: "Upon popular request from our FinTech members, we’re organising an evening
with real-world testimonials and original campaign ideas to lower the Customer
Acquisition Cost for your FinTech in order to scale up cost efficiently.

FinTechs spend fortunes in marketing to attract and convert prospects into
customers for their innovative niche products and services. During our evening
gathering our speakers will inspire you with some of their past success stories and
expensive failures. Lost marketing battles and acquisition victories will be
shared with the audience.",
quantity: 90,
penalty_fee: 50,
cancellation_policy: "Moderate",
public: true,
price: 0
)

e4.image =  open("https://pbs.twimg.com/media/CwQ6ljHWYAAsO5h.jpg", "r")
e4.organization = o4
e4.save

p "Event id #{e4.id}"

e5 = Event.create(
   title: "Doing Business in Belgium – Legal Pack for Start Ups by Erik de Herdt" ,
   offline: true,
   venue: "Betacowork Coworking Brussels, 1040, Brussels",
   address: "Rue de pères blancs 4",
   start: "Fri, 16 Oct 2017 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2017 20:00:00 UTC +00:00",
   description: "What is the most appropriate vehicle for my business?
What do I need to know to sign contracts with customers and suppliers?
Are there any specific rules for online business and e-commerce?
How can I protect my intellectual property?
Key legal documents for start ups.
Erik de Herdt will answer to all these questions.",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Flexible",
   public: true,
   price: 0
 )

e5.image =  open("http://www.betacowork.com/wp-content/uploads/law-400x267.jpg", "r")
e5.organization = o2
e5.save

p "Event id #{e5.id}"

e6 = Event.create(
   title: "The 10 Best Tools to Hack your Growth in 2017" ,
   offline: true,
   venue: "Betacowork Coworking Brussels",
   address: "Rue de pères blancs 4, etterbeek, brussels",
   start: "Fri, 16 Oct 2017 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2017 20:00:00 UTC +00:00",
   description: "• Increase your conversion online

• Reach more customers

• Understand the power of Facebook Ads.


You don’t know what Facebook Ads is? Do you think Facebook Ads are not for you? That your customers are not reachable via this channel? With over 1.7 billion users, are you really sure your customers are not on Facebook?


Combining the power of Facebook Ads with the insights from Facebook Pixel help you to reach more clients, to increase your conversion and to target and retarget more efficiently your customer’s segments. In this presentation, you will learn what are Facebook Ads and Instagram Ads, what are the options and their benefits, how to implement efficiently Facebook Pixel and how to use it insights to retarget potential customers. You will also discover how you can mix acquisitions from other channels with Facebook Ads to retarget more efficiently your audience.

About the speaker:

Jean-Christophe has a long experience in digital marketing. With more than 10 years in communication agency and 4 years in a startup specialised on social networks technologies, he has acquired a certain experience of the field. Combined with his knowledge of technologies, he can mix it with marketing strategies to automate and improve growth of your company.

Programme:

• 18h30: Welcome and drinks

• 19h15: Facebook and Instagram Ads explained

• 20h00: Drinks and networking

About the organisation:

This meetup is organised and sponsored by Betacowork, ICAB and MAD Kings. Thanks for their support.",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Moderate",
   public: true,
   price: 0
 )

e6.image =  open("http://abdevlabs.com/wp-content/uploads/2014/02/growth-hacker-funnel.jpg", "r")
e6.organization = o2
e6.save

p "Event id #{e6.id}"

e7 = Event.create(
   title: "Comment lancer son business compte Instagram – Atelier par Eléonore Degand" ,
   offline: true,
   venue: "Betacowork Coworking Brussels",
   address: "Rue de pères blancs 4, ETTERBEEK, BELGIUM",
   start: "Fri, 16 Oct 2016 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2016 20:00:00 UTC +00:00",
   description: "Pendant mon stage d’un mois,je me suis rendue compte que à ma grande surprise le Betacowork était dépourvu d’un compte instagram. Avec l’aide de ma maitre de stage Sara, nous avons décidé de remédier à ça.Venez suivre quelques astuces pour vous aussi pouvoir optimiser au mieux votre nouveau compte instagram pour le business.

Grands points de la présentation
Avant le lancement du compte
Le premier poste
Contenu de l’instagram
Augmenter son nombre de followers
Trouver le bon #
",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Moderate",
   public: true,
   price: 0
 )

e7.image =  open("https://ramonsuarez.files.wordpress.com/2200/03/instagram.jpg", "r")
e7.organization = o2
e7.save

p "Event id #{e7.id}"

e8 = Event.create(
   title: "Creative Mornings @Beursschouwburg - Sound" ,
   offline: true,
   venue: "BeursCafé, at Beursschouwburg",
   address: "Rue Auguste Orts 20-28, 1000 Bruxelles",
   start: "Fri, 16 Oct 2016 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2016 20:00:00 UTC +00:00",
   description: "Brussels is not only the capital of Europe, but a beautiful and very diverse city, with a multitude of nationalities, cultures and languages.

CreativeMornings Brussels aims to bring together people from these different communities, connect and inspire them! Throughout the monthly events, it will look at creativity from multiple angles, including art, business and technology, and welcoming creative people, in a broad sense. ",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Moderate",
   public: true,
   price: 0
 )

e8.image =  open("http://www.project668.org/wp-content/uploads/Creative-mornings-brussels.jpg", "r")
e8.organization = o2
e8.save

p "Event id #{e8.id}"

e9 = Event.create(
   title: "Cold Calling Tips and Tricks – Workshop by Ygal Levy" ,
   offline: true,
   venue: "Betacowork Coworking Brussels",
   address: "Rue de pères blancs 4, 1040, Belgique",
   start: "Fri, 16 Oct 2016 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2016 20:00:00 UTC +00:00",
   description: "Want to learn more about Cold Calling for your client or partnership prospection? Get first hand-experience from Ygal on how he’s been closing 1000 partnerships in a year through e-mail campaigns and cold calling.

secretary-1149302_640

What will you learn:
What are the general rules;
Approaches and tips to catch a person’s interest and closing down a sale/partnership.
Who is Ygal Levy?
Ygal Levy is in charge of the development of Bird Office in Belgium for the past year. Bird Office is the “Airbnb of meeting and conference rooms” and has a presence in France, Belgium, the UK, Luxembourg and Switzerland. Like Airbnb we don’t own any physical meeting rooms but propose those professional spaces from hotels, coworking, business centres and any other company with available meeting spaces that are underused (offices of coaches, architects, lawyers, headhunters etc.)",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Moderate",
   public: true,
   price: 0
 )

e9.image =  open("http://www.betacowork.com/wp-content/uploads/secretary-1149302_640-400x283.jpg", "r")
e9.organization = o2
e9.save

p "Event id #{e9.id}"

e10 = Event.create(
   title: "Demo Day Brussels #45" ,
   offline: true,
   venue: "Le Wagon",
   address: "Parvis Sainte-Gudule 5, 1000 Bruxelles",
   start: "Fri, 16 Oct 2016 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2016 21:00:00 UTC +00:00",
   description: "On Friday, December 16, the last day of the bootcamp, they will showcase their apps in front of a large audience (investors, journalists, other startup founders, experienced developers, YOU...).

We will then celebrate the end of this journey (and this year!🎄) and most importantly new beginnings, surrounded by great company & drinks! ",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Moderate",
   public: true,
   price: 0
 )

e10.image =  open("https://a248.e.akamai.net/secure.meetupstatic.com/photos/event/7/2/d/c/600_456509404.jpeg", "r")
e10.organization = o5
e10.save

p "Event id #{e10.id}"


###########
# BOOKINGS
###########

b1 = Booking.create(
  attended: false,
  cancelled: false,
  user_id: u1.id,
  event_id: e1.id
  )

b1.save

p "Booking id #{b1.id}"

b2 = Booking.create(
  attended: false,
  cancelled: false,
  user_id: u2.id,
  event_id: e2.id
  )

b2.save

p "Booking id #{b2.id}"

b3 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u3.id,
  event_id: e3.id
  )

b3.save

p "Booking id #{b3.id}"

b4 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u4.id,
  event_id: e4.id
  )

b4.save

p "Booking id #{b4.id}"

b5 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u2.id,
  event_id: e5.id
  )
b5.save
p "Booking id #{b5.id}"

b6 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u2.id,
  event_id: e1.id
  )
b6.save
p "Booking id #{b6.id}"

b7 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u3.id,
  event_id: e1.id
  )
b7.save
p "Booking id #{b7.id}"

b8 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u4.id,
  event_id: e1.id
  )
b8.save
p "Booking id #{b8.id}"

b9 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u5.id,
  event_id: e1.id
  )
b9.save
p "Booking id #{b9.id}"


b10 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u6.id,
  event_id: e1.id
  )
b10.save
p "Booking id #{b10.id}"


b11 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u7.id,
  event_id: e1.id
  )
b11.save
p "Booking id #{b11.id}"

b12 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u8.id,
  event_id: e1.id
  )
b12.save
p "Booking id #{b12.id}"

b13 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u9.id,
  event_id: e1.id
  )
b13.save
p "Booking id #{b13.id}"

b14 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u1.id,
  event_id: e10.id
  )
b14.save
p "Booking id #{b14.id}"

b15 = Booking.create(
  attended: true,
  cancelled: true,
  user_id: u2.id,
  event_id: e10.id
  )
b15.save
p "Booking id #{b15.id}"

b16 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u3.id,
  event_id: e10.id
  )
b16.save
p "Booking id #{b16.id}"

b17 = Booking.create(
  attended: true,
  cancelled: true,
  user_id: u4.id,
  event_id: e10.id
  )
b17.save
p "Booking id #{b17.id}"

b18 = Booking.create(
  attended: true,
  cancelled: true,
  user_id: u5.id,
  event_id: e10.id
  )
b18.save
p "Booking id #{b18.id}"

b19 = Booking.create(
  attended: true,
  cancelled: true,
  user_id: u6.id,
  event_id: e10.id
  )
b19.save
p "Booking id #{b19.id}"

b20 = Booking.create(
  attended: true,
  cancelled: true,
  user_id: u7.id,
  event_id: e10.id
  )
b20.save
p "Booking id #{b20.id}"

b21 = Booking.create(
  attended: true,
  cancelled: true,
  user_id: u8.id,
  event_id: e10.id
  )
b21.save
p "Booking id #{b21.id}"

b22 = Booking.create(
  attended: false,
  cancelled: true,
  user_id: u9.id,
  event_id: e10.id
  )
b22.save
p "Booking id #{b22.id}"

b23 = Booking.create(
  attended: true,
  cancelled: true,
  user_id: u10.id,
  event_id: e10.id
  )
b23.save
p "Booking id #{b23.id}"
