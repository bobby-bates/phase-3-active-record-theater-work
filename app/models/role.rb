class Role < ActiveRecord::Base
  has_many :auditions

  # Role#auditions given for free with auditions has_many association

  def actors; auditions.map(&:actor) end

  def locations; auditions.map(&:location) end

  def lead
    hired_arr = auditions.where(hired: true)
    if hired_arr.size == 1
      hired_arr.first
    else
      'no actor has been hired for this role'
    end
  end

  def understudy
    # Assuming understudy is always hired after first hire
    hired_arr = auditions.where(hired: true).reorder :updated_at
    if hired_arr.size == 2
      hired_arr.second
    else
      'no actor has been hired for understudy for this role'
    end
  end
end
