@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Course Skill Mapping View'
define view entity ZI_CourseSkill_MWW25
  as select from zcourse_skill_mww25
  association to ZI_Course_MWW25 as _Course on $projection.CourseId = _Course.CourseId
  association to ZI_Skill_MWW25 as _Skill on $projection.SkillId = _Skill.SkillId
{
  key course_id as CourseId,
  key skill_id as SkillId,
      created_by as CreatedBy,
      created_at as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,
      
      /* Associations */
      _Course,
      _Skill
}
