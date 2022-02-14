#----------- Topic Create

print "Creating Topics..."

Topic.destroy_all

top1 = Topic.create! area: 'Family Law', description: 'This area deals with Family Law'

top2 = Topic.create! area: 'IP Law', description: 'This area deals with Intellectual Property and Copyrighting'

top3 = Topic.create! area: 'Contract Law', description: 'This area deals with Contractual Obligations'

puts "created #{Topic.count} topics"

#--------_Type

Type.destroy_all

type1 = Type.create! name: 'Family Law'
type2 = Type.create! name: 'IP Law'
type3 = Type.create! name: 'Contract'



#------------ Document Create

print "Creating Documents..."

Document.destroy_all

docu1 = Document.create! title: 'AVO', description: 'This Document is for Apprehended Violence Orders', image: '../app/assets/images/avocado.png', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type1.id #lawyer_id & client_id

docu2 = Document.create! title: 'Divorce', description: 'This Document is for Divorce Matters', image: 'https://fillmurray.com/200/200', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type1.id

docu3 = Document.create! title: 'IP Registration', description: 'This Document is to register your IP with IP Australia', image: 'https://fillmurray.com/300/300', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type2.id

docu4 = Document.create! title: 'Patent Registration', description: 'This Document is for Patents', image: 'https://fillmurray.com/400/400', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type2.id

docu5 = Document.create! title: 'Leases', description: 'This Document is for Leases', image: 'https://fillmurray.com/500/500', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type3.id

docu6 = Document.create! title: 'Employment', description: 'This Document is for Employment Contracts', image: 'https://fillmurray.com/600/600', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type3.id

puts "created #{Document.count} topics"

#------------ Associations

top1.documents << docu1 << docu2
top2.documents << docu3 << docu4
top3.documents << docu5 << docu6

puts "Testing topic -< documents association:"
puts "  • the documents '#{Document.first.title}' is on the topic '#{ Document.first.topic.area}' "
puts "  • the topic '#{ Topic.last.area}' has the document: #{ Topic.last.documents.pluck(:title).join(', ') }  "

#-------------User

print "Creating Users..."

User.destroy_all

u1 = User.create! name: 'Stanley Chin', email: 's@hotmail.com', role: 'lawyer', password: 'chicken', #lawyer_documents
u2 = User.create! name: 'Liesel Pirece', email: 'l@hotmail.com', role: 'lawyer', password: 'chicken'
u3 = User.create! name: 'Amy Chin', email: 'a@hotmail.com', role: 'client', password: 'chicken', #client_documents
u4 = User.create! name: 'Robert Chin', email: 'r@hotmail.com', role: 'client', password: 'chicken'
u5 = User.create! name: 'Deborah Chin', email: 'd@hotmail.com', role: 'client', password: 'chicken'

u1.documents << docu1 << docu2
u2.documents << docu3 << docu4
u3.documents << docu5 << docu6


puts "created #{User.count} users"


#-----------Stage One Documents
# stone1 = Stageone.create! title: 'AVO', lawyer_signature: 'No', user_signature: 'No', user_name: 'AVO Chin', lawyer_name: 'AVO Lawyer'
# stone2 = Stageone.create! title: 'Divorce', lawyer_signature: 'No', user_signature: 'No', user_name: 'Divorce Chin', lawyer_name: 'Divorce Lawyer'
# stone3 = Stageone.create! title: 'IP Registration', lawyer_signature: 'No', user_signature: 'No', user_name: 'IP Registration Chin', lawyer_name: 'IP Registration Lawyer'
# stone4 = Stageone.create! title: 'Patent Registration', lawyer_signature: 'No', user_signature: 'No', user_name: 'Patent Registration Chin', lawyer_name: 'Patent Registration Lawyer'
# stone5 = Stageone.create! title: 'Leases', lawyer_signature: 'No', user_signature: 'No', user_name: 'Leases Chin', lawyer_name: 'Leases Lawyer'
# stone6 = Stageone.create! title: 'Employment', lawyer_signature: 'No', user_signature: 'No', user_name: 'Employment Chin', lawyer_name: 'Employment Lawyer'

#------------Association

print "Creating Templates..."

Template.destroy_all

temp1 = Template.create! title: 'AVO', description: 'This Template is for an Apprehended Violence Orders. People who experience a form of domestic abuse or another can apply to the court to get an Apprehended Violence Order (AVO) from the court. It does not matter where the threat of future violence comes from, a court will impose the necessary restrictions be it an AVO (Apprehended Violence Order) or an ADVO (Apprehended Domestic Violence Order) depending on individual State or Territory’s legislation.', image: 'app/assets/images/avocado.png', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type1.id

temp2 = Template.create! title: 'Divorce', description: 'This Template is for Divorce Matters. Divorce is the formal legal ending of a marriage. It is separate and distinct from property settlement and parenting arrangements after the breakdown of a marriage. 

To be able to get divorced you need to show that your marriage has ‘irretrievably broken down’. This is demonstrated by being separated for 12 months or more, and there being no likelihood of the relationship resuming. The separation can be initiated by one person, or both.', image: 'https://fillmurray.com/100/100', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type1.id

temp3 = Template.create! title: 'IP Registration', description: 'This Template is to register your IP with IP Australia. Trade marks act as a badge of origin for your services and allow you to stand out from your competition.

A successful trade mark creates emotion because emotion drives the buying decision. This is why experienced brand owners strive to generate a strong emotional attachment to brands. A great trade mark has the power to change a desire into a burning need. The consumer has no choice but to buy. 

Trade mark registration is the best form of brand protection. Trade marks add value to your business and are assets business buyers look towards when acquiring businesses. Trade mark registrations increase the resale value of businesses.

Most importantly a trade mark registration allows you to easily enforce your rights against those that are trying to trade on the good reputaiton you have established in your brand. ', image: 'https://fillmurray.com/100/100', type_id: type2.id

temp4 = Template.create! title: 'Patent Registration', description: 'This Template is for Patents. A patent is a right that is granted for any device, substance, method or process that is new, inventive and useful.
A patent is a legally enforceable right to commercially exploit the invention for the life of the patent.', image: 'https://fillmurray.com/100/100', type_id: type2.id

temp5 = Template.create! title: 'Leases', description: 'This Template is for Leases. A lease is a contract outlining the terms under which one party agrees to rent an asset—in this case, property—owned by another party. It guarantees the lessee, also known as the tenant, use of the property and guarantees the lessor—the property owner or landlord—regular payments for a specified period in exchange.', image: 'https://fillmurray.com/100/100', type_id: type3.id

temp6 = Template.create! title: 'Employment', description: 'This Template is for Employment Contracts. An employment contract is an agreement between an employer and employee that sets out terms and conditions of employment. A contract can be in writing or verbal. All employees are covered by the National Employment Services(NES), regardless of whether they’ve signed a contract. A contract can’t make employees worse off than their minimum legal entitlements.', image: 'https://fillmurray.com/100/100', type_id: type3.id


puts "created #{Template.count} templates"
