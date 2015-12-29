class Student < ActiveRecord::Base
 
  validates_presence_of :first_name, :last_name, :f_name, :date_of_birth, :age, :mobile
  validates_length_of :first_name, :last_name, :f_name, :in => 3..10

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	#specify that the resume is a paperclip file attachment
  has_attached_file :resume

  belongs_to :country
belongs_to :state

def self.search(search)
  if search
    self.where('first_name LIKE ? || last_name LIKE ?', "%#{search}%" , "%#{search}%")


  else
    self.all
  end
end
  
end
