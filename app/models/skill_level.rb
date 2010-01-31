class SkillLevel
  LEVEL_DEFINITIONS = 
    { 1 => ["Novice",
            "Beginners have had no experience of the situations in which they are expected to perform. Novices are taught rules to help them perform. The rules are context-free and independent of specific cases; hence the rules tend to be applied universally. The rule-governed behavior typical of the novice is extremely limited and inflexible. As such, novices have no 'life experience' in the application of rules."],
      2 => ["Advanced Beginner",
            "Advanced beginners are those who can demonstrate marginally acceptable performance, those who have coped with enough real situations to note, or to have pointed out to them by a mentor, the recurring meaningful situational components. These components require prior experience in actual situations for recognition. Principles to guide actions begin to be formulated. The principles are based on experience."],
      3 => ["Competent",
            "Competence, typified by the nurse who has been on the job in the same or similar situations two or three years, develops when the nurse begins to see his or her actions in terms of long-range goals or plans of which he or she is consciously aware. For the competent nurse, a plan establishes a perspective, and the plan is based on considerable conscious, abstract, analytic contemplation of the problem. The conscious, deliberate planning that is characteristic of this skill level helps achieve efficiency and organization. The competent nurse lacks the speed and flexibility of the proficient nurse but does have a feeling of mastery and the ability to cope with and manage the many contingencies of clinical nursing. The competent person does not yet have enough experience to recognize a situation in terms of an overall picture or in terms of which aspects are most salient, most important."],
      4 => ["Proficient",
            "The proficient performer perceives situations as wholes rather than in terms of chopped up parts or aspects, and performance is guided by maxims. Proficient nurses understand a situation as a whole because they perceive its meaning in terms of long-term goals. The proficient nurse learns from experience what typical events to expect in a given situation and how plans need to be modified in response to these events. The proficient nurse can now recognize when the expected normal picture does not materialize. This holistic understanding improves the proficient nurse's decision making; it becomes less labored because the nurse now has a perspective on which of the many existing attributes and aspects in the present situation are the important ones. The proficient nurse uses maxims as guides which reflect what would appear to the competent or novice performer as unintelligible nuances of the situation; they can mean one thing at one time and quite another thing later. Once one has a deep understanding of the situation overall, however, the maxim provides direction as to what must be taken into account. Maxims reflect nuances of the situation."],
      5 => ["Expert",
            "The expert performer no longer relies on an analytic principle (rule, guideline, maxim) to connect her or his understanding of the situation to an appropriate action. The expert nurse, with an enormous background of experience, now has an intuitive grasp of each situation and zeroes in on the accurate region of the problem without wasteful consideration of a large range of unfruitful, alternative diagnoses and solutions. The expert operates from a deep understanding of the total situation. The chess master, for instance, when asked why he or she made a particularly masterful move, will just say: 'Because it felt right; it looked good.' The performer is no longer aware of features and rules;' his/her performance becomes fluid and flexible and highly proficient. This is not to say that the expert never uses analytic tools. Highly skilled analytic ability is necessary for those situations with which the nurse has had no previous experience. Analytic tools are also necessary for those times when the expert gets a wrong grasp of the situation and then finds that events and behaviors are not occurring as expected When alternative perspectives are not available to the clinician, the only way out of a wrong grasp of the problem is by using analytic problem solving."]
    }
  
  attr_accessor :id, :name, :description

  def initialize(id, name, description)
    @id = id
    @name = name
    @description = description
  end

  def selection_name
    "#{id} | #{name}"
  end
    
  def self.all
    return @all if @all
    @all = []
    LEVEL_DEFINITIONS.each do |k,v|
      @all << SkillLevel.new(k,v[0],v[1])
    end
    @all
  end
end
