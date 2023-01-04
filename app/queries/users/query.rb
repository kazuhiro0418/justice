module Users
  class Query < Query
    def initialize(relation = ::User.all)
      @relation = relation
    end
  end
end
