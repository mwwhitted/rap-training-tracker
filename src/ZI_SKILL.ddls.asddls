@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Skill View'
define root view entity ZI_Skill_MWW25
  as select from zskill_mww25
{
  key skill_id as SkillId,
      name as Name,
      created_by as CreatedBy,
      created_at as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt
}
