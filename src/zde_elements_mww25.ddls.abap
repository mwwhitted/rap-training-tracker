@AbapCatalog.sqlViewAppendName: 'ZDE_ELEMENTS_MWW25A'
@EndUserText.label: 'Data Elements for AI Training Tracker'

define abstract entity ZDE_ELEMENTS_MWW25A {
  // Course Data Elements
  @EndUserText.label: 'Course ID'
  @AbapCatalog.domain: 'ZDM_COURSE_ID_MWW25A'
  ZDE_COURSE_ID_MWW25A : abap.char(10);
  
  @EndUserText.label: 'Course Title'
  @AbapCatalog.domain: 'ZDM_COURSE_TITLE_MWW25A'
  ZDE_COURSE_TITLE_MWW25A : abap.char(100);
  
  @EndUserText.label: 'Course Level'
  @AbapCatalog.domain: 'ZDM_COURSE_LEVEL_MWW25A'
  @AbapCatalog.textLanguage: 'EN'
  ZDE_COURSE_LEVEL_MWW25A : abap.char(10);
  
  @EndUserText.label: 'Instructor Name'
  @AbapCatalog.domain: 'ZDM_INSTRUCTOR_MWW25A'
  ZDE_INSTRUCTOR_MWW25A : abap.char(50);
  
  // Skill Data Elements
  @EndUserText.label: 'Skill ID'
  @AbapCatalog.domain: 'ZDM_SKILL_ID_MWW25A'
  ZDE_SKILL_ID_MWW25A : abap.char(10);
  
  @EndUserText.label: 'Skill Name'
  @AbapCatalog.domain: 'ZDM_SKILL_NAME_MWW25A'
  ZDE_SKILL_NAME_MWW25A : abap.char(100);
  
  // Progress Data Elements
  @EndUserText.label: 'Progress ID'
  @AbapCatalog.domain: 'ZDM_PROGRESS_ID_MWW25A'
  ZDE_PROGRESS_ID_MWW25A : abap.char(16);
  
  @EndUserText.label: 'User ID'
  @AbapCatalog.domain: 'ZDM_USER_ID_MWW25A'
  ZDE_USER_ID_MWW25A : abap.char(12);
  
  @EndUserText.label: 'Percent Complete'
  @AbapCatalog.domain: 'ZDM_PERCENT_MWW25A'
  ZDE_PERCENT_MWW25A : abap.dec(5,2);
  
  @EndUserText.label: 'Progress Status'
  @AbapCatalog.domain: 'ZDM_PROGRESS_STATUS_MWW25A'
  @AbapCatalog.textLanguage: 'EN'
  ZDE_PROGRESS_STATUS_MWW25A : abap.char(15);
  
  // Feedback Data Elements
  @EndUserText.label: 'Feedback ID'
  @AbapCatalog.domain: 'ZDM_FEEDBACK_ID_MWW25A'
  ZDE_FEEDBACK_ID_MWW25A : abap.char(16);
  
  @EndUserText.label: 'Feedback Comments'
  @AbapCatalog.domain: 'ZDM_FEEDBACK_TEXT_MWW25A'
  ZDE_FEEDBACK_TEXT_MWW25A : abap.string(1024);
}
