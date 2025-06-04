@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Feedback View'
define root view entity ZI_Feedback_MWW25
  as select from zfeedback_mww25
  association to ZI_Course_MWW25 as _Course on $projection.CourseId = _Course.CourseId
{
  key feedback_id as FeedbackId,
      user_id as UserId,
      course_id as CourseId,
      comments as Comments,
      created_by as CreatedBy,
      created_at as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt,
      
      /* Associations */
      _Course
}
