@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Course Level Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CourseLevelVH_MWW25
  as select from zcourse_mww25
{
      @UI.hidden: true
  key course_id as CourseId,
      @ObjectModel.text.element: ['Level']
      @UI.textArrangement: #TEXT_ONLY
      course_level as Level
}
