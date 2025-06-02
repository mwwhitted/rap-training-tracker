@EndUserText.label: 'Progress Consumption View'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity ZC_Progress_MWW25 
  as projection on ZI_Progress_MWW25
{
  key ProgressId,
  
  @Consumption.valueHelpDefinition: [{entity: {name: 'ZI_Course_MWW25', element: 'CourseId' }}]
  CourseId,
  
  @Search.defaultSearchElement: true
  UserId,
  
  PercentComplete,
  
  @Consumption.valueHelpDefinition: [{entity: {name: 'ZI_ProgressStatusVH_MWW25', element: 'Status' }}]
  Status,
  
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt,
  LocalLastChangedAt,
  
  /* Associations */
  _Course : redirected to ZC_Course_MWW25
}
