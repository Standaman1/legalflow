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

docu1 = Document.create! title: 'AVO', description: 'This Document is for Apprehended Violence Orders', image: 'https://www.flaticon.com/free-icons/avocado', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type1.id

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

u1 = User.create! name: 'Stanley Chin', email: 's@hotmail.com', role: 'lawyer', password: 'chicken'
u2 = User.create! name: 'Liesel Pirece', email: 'l@hotmail.com', role: 'lawyer', password: 'chicken'
u3 = User.create! name: 'Amy Chin', email: 'a@hotmail.com', role: 'client', password: 'chicken'
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

temp1 = Template.create! title: 'AVO', description: 'This Template is for Apprehended Violence Orders', image: 'https://www.flaticon.com/free-icons/avocado', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type1.id

temp2 = Template.create! title: 'Divorce', description: 'This Template is for Divorce Matters', image: 'https://fillmurray.com/100/100', lawyer_signature: 'lawyersignature', user_signature: 'usersignature', user_name: 'user_name', lawyer_name: 'lawyer_name', type_id: type1.id

temp3 = Template.create! title: 'IP Registration', description: 'This Template is to register your IP with IP Australia', image: 'https://fillmurray.com/100/100', type_id: type2.id

temp4 = Template.create! title: 'Patent Registration', description: 'This Template is for Patents', image: 'https://fillmurray.com/100/100', type_id: type2.id

temp5 = Template.create! title: 'Leases', description: 'This Template is for Leases', image: 'https://fillmurray.com/100/100', type_id: type3.id

temp6 = Template.create! title: 'Employment', description: 'This Template is for Employment Contracts', image: 'https://fillmurray.com/100/100', type_id: type3.id


puts "created #{Template.count} templates"
