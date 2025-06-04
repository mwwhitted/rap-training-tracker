@EndUserText.label: 'Feedback Consumption View'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity ZC_Feedback_MWW25 
  as projection on ZI_Feedback_MWW25
{
  key FeedbackId,
  
  @Search.defaultSearchElement: true
  UserId,
  
  @Consumption.valueHelpDefinition: [{entity: {name: 'ZI_Course_MWW25', element: 'CourseId' }}]
  CourseId,
  
  Comments,
  
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt,
  LocalLastChangedAt,
  
  /* Associations */
  _Course : redirected to ZC_Course_MWW25
}
