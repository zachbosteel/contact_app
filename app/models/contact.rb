class Contact < ActiveRecord::Base
  belongs_to :user
  has_many :grouped_contacts
  has_many :groups, through: :grouped_contacts
  def full_name
    full_name = " "
    if first_name != nil
      full_name += "#{first_name}"
    end
    if middle_name != nil
      full_name += " #{middle_name}"
    end
    if last_name != nil
      full_name += " #{last_name}"
    end
    full_name
  end
  def friendly_updated_at
    fua = updated_at.strftime("%B %e, %Y, %l:%M %p")
    fua
  end
  def from_japan
    fj = "+81 #{phone_number}"
    fj
  end
end
