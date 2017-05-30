require './lib/student'

module Student
  class ModOne
    include Student

    def time_management_skills
      10
    end

    def projects_due
      1
    end

    def need_coffee?
      @need_coffee
    end
  end
end
