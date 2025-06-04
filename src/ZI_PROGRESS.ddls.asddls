@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Progress View'
define root view entity ZI_Progress_MWW25
  as select from zprogress_mww25
  association to ZI_Course_MWW25 as _Course on $projection.CourseId = _Course.CourseId
{
  key progress_id as ProgressId,
      course_id as CourseId,
      user_id as UserId,
      percent_complete as PercentComplete,
      status as Status,
      created_by as CreatedBy,
      created_at as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,
      
      /* Associations */
      _Course
}
