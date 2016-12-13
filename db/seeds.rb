# Seed : Users, Organizations, Events and Bookings

###########
# USERS
###########

u1 = User.create(
  first_name: "Michel",
  last_name: "Duchateau",
  address: "Rue de peres blancs 4, 1040, Etterbeek, Brussels, Belgium",
  phone: "+3212345678",
  email:"michel@duchateau.be",
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
  email:"sara@betacowork.com",
  password: "saramagnabosco"
  )
u2.avatar =  open("https://media.licdn.com/media/AAEAAQAAAAAAAAgpAAAAJDI2ZjY1M2I5LTVmNmMtNDM0ZS05MjI5LTA2OWVhZjI1Y2ZiOA.jpg", "r")
u2.save

p "User id #{u2.id}"

u3 = User.create(
  first_name: "Gabriela",
  last_name: "Fernandez",
  address: "Rue de peres blancs 4, brussels",
  phone: "+322 7376772",
  email:"gabriela@startups.be",
  password: "gabrielafernandez"
  )
u3.avatar =  open("https://startups.be/storage/app/uploads/public/57d/810/088/thumb_3837_500x500_0_0_crop.jpg", "r")
u3.save

p "User id #{u3.id}"

u4 = User.create(
  first_name: "testing",
  last_name: "last_name",
  address: "Test street 14, Test Town, United Tests of the world",
  phone: "+3212345678",
  email:"test@test.com",
  password: "secret"
  )
u4.avatar =  open("http://irishdeaths.com/wp-content/uploads/2014/03/Jane-Doe-3-800x450.jpg", "r")
u4.save

p "User id #{u4.id}"

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
o3.save

p "Organization id #{o3.id}"

###########
# EVENTS
###########

 e1 = Event.create(
   title: "Startup Weekend Brussels FinTech" ,
   offline: true,
   online_url: "",
   venue: "co.station",
   address: "Place Sainte-Gudule 5",
   start: "Fri, 9 Oct 2016 18:00:00 UTC +00:00",
   end: "Sun, 11 Oct 2016 20:00:00 UTC +00:00",
   description: "Brace yourselves, Belgium's first ever FinTech Startup Weekend is here - bringing the FinTech movement to the Capital of Europe! Financial technology, also known as FinTech, is using software to provide financial services. FinTech companies are generally startups founded with the purpose of disrupting incumbent financial systems and providing services such as mobile payments, money transfers, loans, fundraising and even asset management. You too, can be a Fintech innovator, whatever your background, and a Startup Weekend Maker is an excellent place to start. You will have access to financial experts, software packages, and open source innovation to prototype your idea. You will: Pitch your idea (if you want to; its an open stage format) Form a team around an idea and make it real Get grilled and coached by some of the toughest industry experts Present to a panel of expert judges and win amazing prizes Test the limits of sleeplessness ;) This will be the 1st event of its kind in Belgium where the local startup ecosystem will join in for a three day marathon of co-creation, making and growth-hacking! Check out the Startup Weekend trailer here and a first-timer's experience here. Given the elaborate set up involved, places are limited so book your spot NOW! All Startup Weekend events follow the same basic model: anyone is welcome to pitch their startup idea and receive feedback from their peers. Teams organically form around the top ideas (as determined by popular vote) and then it’s a weekend frenzy of business model creation, product designing, prototyping, business coaching and market validation. The weekends culminate with presentations in front of local entrepreneurial leaders with another opportunity for critical feedback. It isn’t always pretty. It will be challenging and can be grueling. But, if you can stick it out, you will have gained the equivalent of months worth of learning, building, and networking in one weekend. Hell, you might even start your first company! Whether you start companies, find a co-founder, meet someone new, or learn a skill far outside the usual 9-to-5, everyone is guaranteed to leave the event better prepared to navigate the chaotic but fun world of startups. The event will be held in English. The venue is quiet central so there will be a lot of hostel options around too. Check out www.hostelsclub.com and www.hostelworld.com for hostel options, and www.airbnb.com for apartments. Looking forward to seeing you all there! Team SW Brussels FinTech _________________________________ Refund Policy: No refunds will be granted within 7 days of the event as food and drinks are already ordered by then. About Startup Weekend: Startup Weekends are weekend events designed to provide superior experiential education for technical and non-technical entrepreneurs. Beginning with Friday night pitches and continuing through brainstorming, business plan development, and basic prototype creation, Startup Weekends culminate in Sunday night demos and presentations. Participants create working startups during the event and are able to collaborate with like-minded individuals outside of their daily networks. All teams hear talks by industry leaders and receive valuable feedback from local entrepreneurials. The weekend is centered around action, innovation, and education. Whether you are looking for feedback on a idea, a co-founder, specific skill sets, or a team to help you execute, Startup Weekends are the perfect environment in which to test your idea and take the first steps towards launching your own startup. Terms of Participation Agreement: It is our job to provide you with an incredible networking and learning opportunity. Our intention is that you meet some amazing people that you might actually start a company with, build relationships with coaches, and learn from your peers. The event is intended to be a collaborative forum for sharing, learning, building, and having fun. As such, by registering as a participant, you acknowledge that any ideas shared by you or anyone else over the course of the event are contributions to the overall experience and community. If you as a participant are worried about someone stealing your ideas, please reconsider your participation in the event itself or simply refrain from sharing specifics about your idea. As a member of your startup community, you agree to to be inclusive of any and all people and their ideas. You agree to act professionally, treat everyone with respect, and treat the event facilities with proper care. You agree that you are responsible for any accidents or damages that you cause. You also agree to not hold Startup Weekend, your local volunteer team, or any of the event supporters liable for any loss, damage, injury, or any other unforeseeable incident. By participating in the Startup Weekend, each Participant grants STARTUP WEEKEND and its licensees, successors and assigns a non-exclusive, perpetual, non-cancelable, royalty free, fully paid up, worldwide right and license to edit, modify, adapt, translate, exhibit, publish, transmit, participate in the transfer of, reproduce, copy, create derivative works from, distribute, perform, display and otherwise use all and/or any part of such Participant’s names, likenesses, photographs, voices and images of all persons referenced and/or appearing in materials generated at the event, without limitation, anywhere in the world in any form (tangible or intangible, permanent or ephemeral, including, without limitation, audio, video, print, electronic, written, and photographic) and via any transmission medium (including, without limitation, television, radio, Internet, and print) now existing or that may exist in the future for advertising, trade, promotion, publicity and other related purposes without compensation and without notice to or consideration, review or approval from Participant. Each Participant further agrees to (i) be questioned or interviewed (whether in person or by other means such as email or phone), filmed and/or photographed and available for interviewing, filming, photography and for other public relations, marketing and promotional activities associated with the Event, as reasonably required and directed by STARTUP WEEKEND, (ii) allow STARTUP WEEKEND to make contact with the Participant (whether in person, by phone, email or otherwise) for the purpose of requesting further information from the Participant in relation to their participation or for any other purpose related to the Startup Weekend. Each Participant represents and warrants that neither its participation, nor STARTUP WEEKEND’s exercise of any of the rights granted to it under these Terms will (a) infringe or violate any rights of any third party or entity, including, without limitation, those relating to patents, copyrights, trademarks, trade secrets, moral rights, mask works, defamation, privacy, publicity, false light, misappropriation, confidentiality, and/or any contractual or other rights recognizable under any applicable law, rule, regulation, ordinance, judgment or decree (collectively, “Law”), or (b) otherwise violate any applicable Law. By submitting your information above you agree to the UP.co family of website's Privacy Policy, and you consent to receive email communication from UP Global and its programs about events and updates that may interest you.",
   quantity: 100,
   penalty_fee: 99,
   cancellation_policy: "Strict",
   public: true,
   price: 0
 )

e1.image =  open("http://www.westartup.eu/wp-content/uploads/2015/08/SW-FinTech-Cover-foto.jpg", "r")
e1.save

p "Event id #{e1.id}"

e2 = Event.create(
   title: "Say Yes! Speed up agile adoption with Improv games – Workshop" ,
   offline: true,
   venue: "Betacowork Coworking Brussels",
   address: "Rue de pères blancs 4",
   start: "Fri, 16 Oct 2016 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2016 20:00:00 UTC +00:00",
   description: "What will you do?play-stone-1237458_1280 Ice-breaker & Intro 5 minutes recap’ on Agile principles + 5 minutes recap on Improv principles Agile principles and improv tips and tricks: why & how do they cross-fertilize each other? Warm-up A few quick and easy improv warm-up exercises, to get you going and break the ice. The (not so) serious stuff We will go through some of the most well-known improv games (the robot game, saying yes, etc), explain what purpose they serve and how they relate and can be leveraged in your to agile practice. Wrap-up & take-away’s When and Where? Thursday 24th of November from 7PM to 9.30PM in Room Azzar (ICAB Business & Technology Incubator). Powered by Eventbrite David Zöllner – Digital Learning Specialist David is a digital learning specialist who uses playfulness, fun and curiosity to create engaging and motivating trainings which target business objectives. During the past years, he developed many game-based online business trainings for various market leading companies. For the development of his concepts, he uses profound knowledge of learning methods, his experience with corporate training structures and also his passion for games, narratives and improvisational theatre.",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Moderate",
   public: false,
   price: 0
 )

e2.image =  open("http://www.betacowork.com/wp-content/uploads/The-Global-Lens%E2%84%A2-Betacowork-Staff-8008074-6.jpg", "r")
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
e3.save

p "Event id #{e3.id}"

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


#######
# Link events to orgs
#######

e1.organization = o1
e2.organization = o2
e3.organization = o3
e1.save
e2.save
e3.save

#######
# Link orgs to test user
#######
o1.user = u4
o2.user = u4
o3.user = u1
o1.save
o2.save
o3.save


