class Ability
  include CanCan::Ability

  def initialize(user)
    if user.nil?
      can :read, Category, Article
    elsif  user.roles.first.role == 'admin' 
      can :manage, :all
    elsif user.roles.first.role == 'user'
      can :addComment, :all
    elsif user.roles.first.role == 'author'
      can :postArticle, Category
    end
  end
end
