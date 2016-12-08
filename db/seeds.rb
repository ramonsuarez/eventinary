# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all
User.destroy_all

 Event.create(
   title: "Startup Weekend Brussels FinTech" ,
   offline: true,
   venue: "co.station",
   address: "Place Sainte-Gudule 5",
   city: "Brussels",
   state: "Brussels",
   postcode: "1000",
   country: "Belgium",
   start: "Fri, 9 Oct 2016 18:00:00 UTC +00:00",
   end: "Sun, 11 Oct 2016 20:00:00 UTC +00:00",
   image: nil,
   description: "Brace yourselves, Belgium's first ever FinTech Startup Weekend is here - bringing the FinTech movement to the Capital of Europe! Financial technology, also known as FinTech, is using software to provide financial services. FinTech companies are generally startups founded with the purpose of disrupting incumbent financial systems and providing services such as mobile payments, money transfers, loans, fundraising and even asset management. You too, can be a Fintech innovator, whatever your background, and a Startup Weekend Maker is an excellent place to start. You will have access to financial experts, software packages, and open source innovation to prototype your idea. You will: Pitch your idea (if you want to; its an open stage format) Form a team around an idea and make it real Get grilled and coached by some of the toughest industry experts Present to a panel of expert judges and win amazing prizes Test the limits of sleeplessness ;) This will be the 1st event of its kind in Belgium where the local startup ecosystem will join in for a three day marathon of co-creation, making and growth-hacking! Check out the Startup Weekend trailer here and a first-timer's experience here. Given the elaborate set up involved, places are limited so book your spot NOW! All Startup Weekend events follow the same basic model: anyone is welcome to pitch their startup idea and receive feedback from their peers. Teams organically form around the top ideas (as determined by popular vote) and then it’s a weekend frenzy of business model creation, product designing, prototyping, business coaching and market validation. The weekends culminate with presentations in front of local entrepreneurial leaders with another opportunity for critical feedback. It isn’t always pretty. It will be challenging and can be grueling. But, if you can stick it out, you will have gained the equivalent of months worth of learning, building, and networking in one weekend. Hell, you might even start your first company! Whether you start companies, find a co-founder, meet someone new, or learn a skill far outside the usual 9-to-5, everyone is guaranteed to leave the event better prepared to navigate the chaotic but fun world of startups. The event will be held in English. The venue is quiet central so there will be a lot of hostel options around too. Check out www.hostelsclub.com and www.hostelworld.com for hostel options, and www.airbnb.com for apartments. Looking forward to seeing you all there! Team SW Brussels FinTech _________________________________ Refund Policy: No refunds will be granted within 7 days of the event as food and drinks are already ordered by then. About Startup Weekend: Startup Weekends are weekend events designed to provide superior experiential education for technical and non-technical entrepreneurs. Beginning with Friday night pitches and continuing through brainstorming, business plan development, and basic prototype creation, Startup Weekends culminate in Sunday night demos and presentations. Participants create working startups during the event and are able to collaborate with like-minded individuals outside of their daily networks. All teams hear talks by industry leaders and receive valuable feedback from local entrepreneurials. The weekend is centered around action, innovation, and education. Whether you are looking for feedback on a idea, a co-founder, specific skill sets, or a team to help you execute, Startup Weekends are the perfect environment in which to test your idea and take the first steps towards launching your own startup. Terms of Participation Agreement: It is our job to provide you with an incredible networking and learning opportunity. Our intention is that you meet some amazing people that you might actually start a company with, build relationships with coaches, and learn from your peers. The event is intended to be a collaborative forum for sharing, learning, building, and having fun. As such, by registering as a participant, you acknowledge that any ideas shared by you or anyone else over the course of the event are contributions to the overall experience and community. If you as a participant are worried about someone stealing your ideas, please reconsider your participation in the event itself or simply refrain from sharing specifics about your idea. As a member of your startup community, you agree to to be inclusive of any and all people and their ideas. You agree to act professionally, treat everyone with respect, and treat the event facilities with proper care. You agree that you are responsible for any accidents or damages that you cause. You also agree to not hold Startup Weekend, your local volunteer team, or any of the event supporters liable for any loss, damage, injury, or any other unforeseeable incident. By participating in the Startup Weekend, each Participant grants STARTUP WEEKEND and its licensees, successors and assigns a non-exclusive, perpetual, non-cancelable, royalty free, fully paid up, worldwide right and license to edit, modify, adapt, translate, exhibit, publish, transmit, participate in the transfer of, reproduce, copy, create derivative works from, distribute, perform, display and otherwise use all and/or any part of such Participant’s names, likenesses, photographs, voices and images of all persons referenced and/or appearing in materials generated at the event, without limitation, anywhere in the world in any form (tangible or intangible, permanent or ephemeral, including, without limitation, audio, video, print, electronic, written, and photographic) and via any transmission medium (including, without limitation, television, radio, Internet, and print) now existing or that may exist in the future for advertising, trade, promotion, publicity and other related purposes without compensation and without notice to or consideration, review or approval from Participant. Each Participant further agrees to (i) be questioned or interviewed (whether in person or by other means such as email or phone), filmed and/or photographed and available for interviewing, filming, photography and for other public relations, marketing and promotional activities associated with the Event, as reasonably required and directed by STARTUP WEEKEND, (ii) allow STARTUP WEEKEND to make contact with the Participant (whether in person, by phone, email or otherwise) for the purpose of requesting further information from the Participant in relation to their participation or for any other purpose related to the Startup Weekend. Each Participant represents and warrants that neither its participation, nor STARTUP WEEKEND’s exercise of any of the rights granted to it under these Terms will (a) infringe or violate any rights of any third party or entity, including, without limitation, those relating to patents, copyrights, trademarks, trade secrets, moral rights, mask works, defamation, privacy, publicity, false light, misappropriation, confidentiality, and/or any contractual or other rights recognizable under any applicable law, rule, regulation, ordinance, judgment or decree (collectively, “Law”), or (b) otherwise violate any applicable Law. By submitting your information above you agree to the UP.co family of website's Privacy Policy, and you consent to receive email communication from UP Global and its programs about events and updates that may interest you.",
   ticket_name: "UX/Design",
   # ticket_name: "Business",
   # ticket_name: "Jack of all trades",
   # ticket_name: "Developer",
   quantity: 100,
   penalty_fee: 99,
   cancellation_policy: "Strict",
   public: true,
   price: 0
 )


 Event.create(
   title: "Say Yes! Speed up agile adoption with Improv games – Workshop" ,
   offline: true,
   venue: "Betacowork Coworking Brussels",
   address: "Rue de pères blancs 4",
   city: "Etterbeek",
   state: "Brussels",
   postcode: "1040",
   country: "Belgium",
   start: "Fri, 16 Oct 2016 18:00:00 UTC +00:00",
   end: "Fri, 16 Oct 2016 20:00:00 UTC +00:00",
   image: nil,
   description: "What will you do?play-stone-1237458_1280 Ice-breaker & Intro 5 minutes recap’ on Agile principles + 5 minutes recap on Improv principles Agile principles and improv tips and tricks: why & how do they cross-fertilize each other? Warm-up A few quick and easy improv warm-up exercises, to get you going and break the ice. The (not so) serious stuff We will go through some of the most well-known improv games (the robot game, saying yes, etc), explain what purpose they serve and how they relate and can be leveraged in your to agile practice. Wrap-up & take-away’s When and Where? Thursday 24th of November from 7PM to 9.30PM in Room Azzar (ICAB Business & Technology Incubator). Powered by Eventbrite David Zöllner – Digital Learning Specialist David is a digital learning specialist who uses playfulness, fun and curiosity to create engaging and motivating trainings which target business objectives. During the past years, he developed many game-based online business trainings for various market leading companies. For the development of his concepts, he uses profound knowledge of learning methods, his experience with corporate training structures and also his passion for games, narratives and improvisational theatre.",
   ticket_name: "Improv",
   quantity: 20,
   penalty_fee: 35,
   cancellation_policy: "Moderate",
   public: false,
   price: 0
 )

 Event.create(
title: "MIC Brussels : Boostcamp Kick-off Day" ,
offline: true,
venue: "MIC Brussels",
address: "Rue Montoyer 51",
city: "",
state: "Brussels",
postcode: "1000",
country: "Belgium",
start: "Thu, 19 Jan 2017 09:00:00 UTC +00:00",
end: "Thu, 19 Jan 2017 17:00:00 UTC +00:00",
image: nil,
description: "Join us for the FREE Kick Off of the Boostcamp #11, on the 19th of January. The objective of the Kick-Off is to provide you with a condensed version of the Boostcamp, in order to help you define if our program is suitable for your IT project. This full-day workshop will be led by Ben Piquard, head coach of the Boostcamp program. Validation of your registration will only be confirmed once you have completed a short questionnaire on your IT project. WHAT IS THE BOOSTCAMP? This program consists of a series of hands-on, practical workshops in key areas of knowledge for starting entrepreneurs (Business Model, Sales, Marketing, Finance, practical aspects). It will include sparring sessions with experts from a wide variety of backgrounds. Eight startups will have the chance to continue the program after the semifinal and be one step closer to the final. See agenda here. WHY SHOULD YOU JOIN BOOSTCAMP? Entrepreneurship is a profession in its own right, and to be successful you need to gain a lot of fundamental experience that you are most likely not even aware of in todays world. Boostcamp provides you with a crash course in these fundamentals of entrepreneurship. This intensive program will guide you with a step-by-step journey and help you make quick progress on your project – if your project hasn’t progressed in a while, we’ll definitely help you move forward. Most importantly, we focus on practice, not on theory – so you will really be able to gain a hands on experience with all of our practices. You also will have fantastic opportunities to discuss your project with experts, experienced entrepreneurs and potential investors; and get personalized, in-depth feedback from them. WHO CAN JOIN BOOSTCAMP? Any technology startup in the Brussels region (or intending to establish a business in the Brussels region) can qualify for Boostcamp. The program is designed for entrepreneurs who have built a prototype of their product, or are still thinking how to start their business. We also help young companies that have just been launched, but are still struggling to find a working business model and build their first revenues.",
ticket_name: "Boostcamper 11 Kick-off",
quantity: 100,
penalty_fee: 0,
cancellation_policy: "Flexible",
public: true,
price: 0
)
# TODO update user with new info when we build on devise's default
User.create(
  email:"test@test.command",
  password: "secret"
  )
