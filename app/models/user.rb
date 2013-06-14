# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  authenticates_with_sorcery!
  belongs_to :aspirant
  belongs_to :chief
  ROLES=%w(Администратор Работник_Аспирантуры Научный_руководитель Аспирант)


  validates :email, presence: true, uniqueness: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
  validates :name,presence: true, length: {maximum: 100}

  validates :password, confirmation: true, length: {minimum: 6}, on: :create
  attr_accessible :name,:email,:password,:password_confirmation,:current_role,:admin_per,:aspirant_per,:worker_per,:chief_per,:aspirant_id,:chief_id

  def human_role
    ROLES[current_role.to_i-1]
  end

  def admin?
    admin_per==1 && current_role==1
  end

  def aspirant?
    aspirant_per==1 && current_role==4
  end

  def chief?
    chief_per==1 && current_role==3
  end

  def worker?
    worker_per==1 && current_role==2
  end

  def check_admin?
    admin_per==1
  end

  def check_aspirant?
    aspirant_per==1
  end

  def check_chief?
    chief_per==1
  end

  def check_worker?
    worker_per==1
  end

  def self.search(search)
    key = "%#{search}%"
    if search
      where('first_name LIKE ? OR last_name LIKE ?', key, key)
    else
      all
    end
  end

end
