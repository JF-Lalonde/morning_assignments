require './lib/student'

module Student
  class ModFour
    include Student

    def time_management_skills
      90
    end

    def projects_due
      7
    end

    def job_hunt?
      true
    end

    def need_coffee?
      @need_coffee
    end
  end
end
