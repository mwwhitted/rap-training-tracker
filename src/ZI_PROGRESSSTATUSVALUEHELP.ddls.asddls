@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Progress Status Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_ProgressStatusVH_MWW25
  as select distinct from zprogress_mww25
{
      @UI.hidden: true
  key progress_id as ProgressId,
      @ObjectModel.text.element: ['Status']
      @UI.textArrangement: #TEXT_ONLY
      status as Status
}
