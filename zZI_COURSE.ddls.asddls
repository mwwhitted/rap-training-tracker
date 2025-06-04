@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Course View'
define root view entity ZI_Course_MWW25
  as select from zcourse_mww25
{
  key course_id as CourseId,
      course_title as Title,
      course_level as Level,
      instructor as Instructor,
      created_by as CreatedBy,
      created_at as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt
}
