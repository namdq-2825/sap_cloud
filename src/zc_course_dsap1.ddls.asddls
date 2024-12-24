@EndUserText.label: 'Projection view for ZI_COURSE_DSAP1'
@AccessControl.authorizationCheck: #CHECK

@Search.searchable: true
@Metadata.allowExtensions: true

define root view entity ZC_COURSE_DSAP1 as projection on ZI_COURSE_DSAP1
{
  key CourseUuid,
      @Search.defaultSearchElement: true
      CourseId,
      @Search.defaultSearchElement: true
      CourseName,
      CourseLength,
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Country', element: 'Country'} }]
      Country,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Price,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Currency', element: 'Currency'} }]
      CurrencyCode,
      LastChangedAt,
      LocalLastChangedAt,

      /* Associations */
      _Country,
      _Currency,
      _Schedule : redirected to composition child ZC_SCHEDULE_DSAP1
}
