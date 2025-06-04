@AbapCatalog.sqlViewAppendName: 'ZDM_DOMAINS'
@EndUserText.label: 'Domains for AI Training Tracker'

define abstract entity ZDM_DOMAINS_MWW25 {
  // Course Domains
  @EndUserText.label: 'Course ID'
  ZDM_COURSE_ID_MWW25 : abap.char(10);
  
  @EndUserText.label: 'Course Title'
  ZDM_COURSE_TITLE_MWW25 : abap.char(100);
  
  @EndUserText.label: 'Course Level'
  @AbapCatalog.textLanguage: 'EN'
  ZDM_COURSE_LEVEL_MWW25 : abap.char(10); // BASIC, INTERMED, ADVANCED
  
  @EndUserText.label: 'Instructor Name'
  ZDM_INSTRUCTOR_MWW25 : abap.char(50);
  
  // Skill Domains
  @EndUserText.label: 'Skill ID'
  ZDM_SKILL_ID_MWW25 : abap.char(10);
  
  @EndUserText.label: 'Skill Name'
  ZDM_SKILL_NAME_MWW25 : abap.char(100);
  
  // Progress Domains
  @EndUserText.label: 'Progress ID' 
  ZDM_PROGRESS_ID_MWW25 : abap.char(16);
  
  @EndUserText.label: 'User ID'
  ZDM_USER_ID_MWW25 : abap.char(12);
  
  @EndUserText.label: 'Percent Value'
  ZDM_PERCENT_MWW25 : abap.dec(5,2);
  
  @EndUserText.label: 'Progress Status'
  @AbapCatalog.textLanguage: 'EN'
  ZDM_PROGRESS_STATUS_MWW25 : abap.char(15); // IN_PROGRESS, DONE
  
  // Feedback Domains
  @EndUserText.label: 'Feedback ID'
  ZDM_FEEDBACK_ID_MWW25 : abap.char(16);
  
  @EndUserText.label: 'Feedback Text'
  ZDM_FEEDBACK_TEXT_MWW25 : abap.string(1024);
}
