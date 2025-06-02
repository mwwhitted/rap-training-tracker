@EndUserText.label: 'Course Consumption View'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity ZC_Course_MWW25 
  as projection on ZI_Course_MWW25
{
  @ObjectModel.text.element: ['Title']
  key CourseId,
  
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.7
  Title,
  
  @Consumption.valueHelpDefinition: [{entity: {name: 'ZI_CourseLevelVH_MWW25', element: 'Level' }}]
  Level,
  
  @Search.defaultSearchElement: true
  @Search.fuzzinessThreshold: 0.7
  Instructor,
  
  CreatedBy,
  CreatedAt,
  LastChangedBy,
  LastChangedAt,
  LocalLastChangedAt
}
