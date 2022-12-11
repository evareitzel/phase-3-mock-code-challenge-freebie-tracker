# Company
#   has_many :Freebies
#   has_many :Devs, through: :Freebie
# Dev
#   has_many :Freebies
#   has_many :Companies, through: :Freebie


# Freebie 
#   belongs_to :Dev
#   belongs_to :Company

