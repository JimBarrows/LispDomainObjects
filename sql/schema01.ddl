
    alter table AccountingPeriod 
        drop constraint FK42F1E4D6D7B4753B;

    alter table AccountingPeriod 
        drop constraint FK42F1E4D6542F0558;

    alter table AccountingTransaction 
        drop constraint FK281588E95D5C94EB;

    alter table AccountingTransaction 
        drop constraint FK281588E92A354B35;

    alter table AccountingTransaction 
        drop constraint FK281588E9A9E5C4F7;

    alter table AccountingTransaction_TransactionDetail 
        drop constraint FK3B6F62D91D07693B;

    alter table AccountingTransaction_TransactionDetail 
        drop constraint FK3B6F62D934A29A2;

    alter table Agreement 
        drop constraint FKB19B71EAE2625C79;

    alter table AgreementItem 
        drop constraint FKB17F5C1D4DE88D7B;

    alter table AgreementItem_Addendum 
        drop constraint FK5E421AB413A612FE;

    alter table AgreementItem_Addendum 
        drop constraint FK5E421AB458C2ADAA;

    alter table AgreementItem_AgreementItem 
        drop constraint FK3216937B13A612FE;

    alter table AgreementItem_AgreementItem 
        drop constraint FK3216937BC6E4532;

    alter table AgreementItem_GeographicBoundary 
        drop constraint FKEB21CB4313A612FE;

    alter table AgreementItem_GeographicBoundary 
        drop constraint FKEB21CB436B1CA7DB;

    alter table AgreementItem_Party 
        drop constraint FKB850A02413A612FE;

    alter table AgreementItem_Party 
        drop constraint FKB850A0246D48B350;

    alter table AgreementItem_PriceComponent 
        drop constraint FK9F406E36ACC19249;

    alter table AgreementItem_PriceComponent 
        drop constraint FK9F406E36B619A70E;

    alter table AgreementItem_Product 
        drop constraint FK379FAAD13A612FE;

    alter table AgreementItem_Product 
        drop constraint FK379FAADF4F62EAB;

    alter table AgreementRole 
        drop constraint FKB183618065AFBB57;

    alter table AgreementRole 
        drop constraint FKB18361809CEED33B;

    alter table AgreementTerm 
        drop constraint FKB184257613A612FE;

    alter table AgreementTerm 
        drop constraint FKB1842576764DC7B;

    alter table Agreement_Addendum 
        drop constraint FK62BD3B87764DC7B;

    alter table Agreement_Addendum 
        drop constraint FK62BD3B8758C2ADAA;

    alter table Agreement_AgreementItem 
        drop constraint FKC59DFE88764DC7B;

    alter table Agreement_AgreementItem 
        drop constraint FKC59DFE88F6DE9C7B;

    alter table Agreement_AgreementRole 
        drop constraint FKC5A203EB764DC7B;

    alter table Agreement_AgreementRole 
        drop constraint FKC5A203EB89ACF5FE;

    alter table Agreement_AgreementTerm 
        drop constraint FKC5A2C7E196FAD446;

    alter table Agreement_AgreementTerm 
        drop constraint FKC5A2C7E1764DC7B;

    alter table Agreement_GeographicBoundary 
        drop constraint FK20B44056764DC7B;

    alter table Agreement_GeographicBoundary 
        drop constraint FK20B4405632F17637;

    alter table BenefitType_PartyBenefit 
        drop constraint FKF94F101F2885A61;

    alter table BenefitType_PartyBenefit 
        drop constraint FKF94F101FC8BA6862;

    alter table BillingAccountRole 
        drop constraint FKA52A16E89F9CDC79;

    alter table BillingAccountRole 
        drop constraint FKA52A16E894BB9362;

    alter table BillingAccount_BillingAccountRole 
        drop constraint FKEC320CF59939E95A;

    alter table BillingAccount_BillingAccountRole 
        drop constraint FKEC320CF55911282E;

    alter table BillingAccount_Invoice 
        drop constraint FKB3C42B209939E95A;

    alter table BillingAccount_Invoice 
        drop constraint FKB3C42B20DE4DAB88;

    alter table Budget 
        drop constraint FK773F9B65E41C4E91;

    alter table Budget 
        drop constraint FK773F9B65864059F7;

    alter table BudgetItem 
        drop constraint FK4DAC50187396012A;

    alter table BudgetItemType_GlBudgetXref 
        drop constraint FK896B6C92795DFE52;

    alter table BudgetItemType_GlBudgetXref 
        drop constraint FK896B6C9235D4E8AE;

    alter table BudgetItem_BudgetItem 
        drop constraint FK79B3D69F14E18041;

    alter table BudgetItem_BudgetItem 
        drop constraint FK79B3D69FD7AA872;

    alter table BudgetItem_BudgetRevisionImpact 
        drop constraint FKD928AD8DD7AA872;

    alter table BudgetItem_BudgetRevisionImpact 
        drop constraint FKD928AD8DE233FF90;

    alter table BudgetItem_OrderItem 
        drop constraint FK9B504BFAD7AA872;

    alter table BudgetItem_OrderItem 
        drop constraint FK9B504BFA24C6C332;

    alter table BudgetItem_PaymentBudgetAllocation 
        drop constraint FKDEE058E4D7AA872;

    alter table BudgetItem_PaymentBudgetAllocation 
        drop constraint FKDEE058E4BC4D5E9D;

    alter table BudgetItem_RequirementBudgetAllocation 
        drop constraint FK2AAFE4A1D7AA872;

    alter table BudgetItem_RequirementBudgetAllocation 
        drop constraint FK2AAFE4A19C278147;

    alter table BudgetReview 
        drop constraint FKA2689F1D2B76B289;

    alter table BudgetReview 
        drop constraint FKA2689F1D6DE65F4F;

    alter table BudgetRevision 
        drop constraint FKAAC382607A6118C9;

    alter table BudgetRevisionImpact 
        drop constraint FK8FB663C6C72DBB8B;

    alter table BudgetRevisionImpact 
        drop constraint FK8FB663C64E41E28C;

    alter table BudgetRevision_BudgetRevisionImpact 
        drop constraint FK54813845B59B416E;

    alter table BudgetRevision_BudgetRevisionImpact 
        drop constraint FK54813845BD2CC9F5;

    alter table BudgetRole 
        drop constraint FK4DB0557B1D829D0D;

    alter table BudgetScenarioApplication 
        drop constraint FK47193FFBB934CBFB;

    alter table BudgetScenarioApplication 
        drop constraint FK47193FFBC86FCE5;

    alter table BudgetScenarioApplication 
        drop constraint FK47193FFB8D477325;

    alter table BudgetScenarioRule 
        drop constraint FKCD1436B154CB3041;

    alter table BudgetScenarioRule 
        drop constraint FKCD1436B17BDB3D7C;

    alter table BudgetScenario_BudgetScenarioApplication 
        drop constraint FK2788365149ACA682;

    alter table BudgetScenario_BudgetScenarioApplication 
        drop constraint FK278836512E64F580;

    alter table BudgetScenario_BudgetScenarioRule 
        drop constraint FK4EC151B4FC57B66;

    alter table BudgetScenario_BudgetScenarioRule 
        drop constraint FK4EC151B2E64F580;

    alter table BudgetStatus 
        drop constraint FKA4E777B72B76B289;

    alter table BudgetStatus 
        drop constraint FKA4E777B729E5C349;

    alter table Budget_BudgetItem 
        drop constraint FK222693214E18041;

    alter table Budget_BudgetItem 
        drop constraint FK2226932C2D0ED32;

    alter table Budget_BudgetReview 
        drop constraint FK11BCD9B7C781573A;

    alter table Budget_BudgetReview 
        drop constraint FK11BCD9B7C2D0ED32;

    alter table Budget_BudgetRevision 
        drop constraint FK95F37E7AE438CD72;

    alter table Budget_BudgetRevision 
        drop constraint FK95F37E7AC2D0ED32;

    alter table Budget_BudgetRole 
        drop constraint FK2266E95AD49C833;

    alter table Budget_BudgetRole 
        drop constraint FK2266E95C2D0ED32;

    alter table Budget_BudgetStatus 
        drop constraint FK143BB251204351D9;

    alter table Budget_BudgetStatus 
        drop constraint FK143BB251C2D0ED32;

    alter table CaseRole 
        drop constraint FK51EBBE6CE72CA52;

    alter table CaseRole 
        drop constraint FK51EBBE6A3D2FAA5;

    alter table CaseRole 
        drop constraint FK51EBBE6C30631B2;

    alter table CommunicationEvent 
        drop constraint FK3612E4844512D5D5;

    alter table CommunicationEvent 
        drop constraint FK3612E484A590046B;

    alter table CommunicationEvent 
        drop constraint FK3612E484C7F9672F;

    alter table CommunicationEventRole 
        drop constraint FK716BF71AAB206F20;

    alter table CommunicationEventRole 
        drop constraint FK716BF71AD7935D5A;

    alter table CommunicationEventRole 
        drop constraint FK716BF71ABD32D899;

    alter table CommunicationEventRole 
        drop constraint FK716BF71A40B6762F;

    alter table CommunicationEventWorkEffort 
        drop constraint FKE5602F01F922D5F5;

    alter table CommunicationEvent_CommunicationEventPurpose 
        drop constraint FKF7C4B3FF7979A2B5;

    alter table CommunicationEvent_CommunicationEventPurpose 
        drop constraint FKF7C4B3FFD019E217;

    alter table CommunicationEvent_Kase 
        drop constraint FKBCB99923128ADE89;

    alter table CommunicationEvent_Kase 
        drop constraint FKBCB99923F7A3B420;

    alter table ContactMechanism_PartyPostalAddress 
        drop constraint FK343EDE491FD0F36C;

    alter table ContactMechanism_PartyPostalAddress 
        drop constraint FK343EDE493866A598;

    alter table Container 
        drop constraint FK5EF36C611B667538;

    alter table Deduction 
        drop constraint FKD543C045E94855F4;

    alter table Deliverable 
        drop constraint FK2AE02BDF48CE15D3;

    alter table Deliverable_Requirement 
        drop constraint FKF51937C396A73014;

    alter table Deliverable_Requirement 
        drop constraint FKF51937C3F687D32B;

    alter table DesiredFeature 
        drop constraint FKA3BA7F1C6CF3AB03;

    alter table Document 
        drop constraint FK3737353B3DB5494E;

    alter table Document 
        drop constraint FK3737353B37E0DE50;

    alter table Document 
        drop constraint FK3737353B610CC534;

    alter table EmploymentApplication 
        drop constraint FK9C97EDA4256BE386;

    alter table EmploymentApplication 
        drop constraint FK9C97EDA41FFADA18;

    alter table EmploymentApplication 
        drop constraint FK9C97EDA48910A494;

    alter table EstimatedProductCost 
        drop constraint FK8F3CFFA0FDF6CCA4;

    alter table EstimatedProductCost 
        drop constraint FK8F3CFFA0B572B3E8;

    alter table EstimatedProductCost 
        drop constraint FK8F3CFFA0516B43CB;

    alter table EstimatedProductCost 
        drop constraint FK8F3CFFA0EFB38180;

    alter table EstimatedProductCost 
        drop constraint FK8F3CFFA081BCE83B;

    alter table Facility 
        drop constraint FK21B8D2C34674D21B;

    alter table FacilityContactMechanism 
        drop constraint FK8BB433FC126B3FE7;

    alter table FacilityContactMechanism 
        drop constraint FK8BB433FCF5EAEC2D;

    alter table FacilityRole 
        drop constraint FK1FE2ADD9AB206F20;

    alter table FacilityRole 
        drop constraint FK1FE2ADD9CE686B25;

    alter table FacilityRole 
        drop constraint FK1FE2ADD99E38DA45;

    alter table Facility_Facility 
        drop constraint FKC7229CBF7FD799BE;

    alter table Facility_Facility 
        drop constraint FKC7229CBF911C11E2;

    alter table Facility_FacilityContactMechanism 
        drop constraint FK5A285F8724E2B4F;

    alter table Facility_FacilityContactMechanism 
        drop constraint FK5A285F8911C11E2;

    alter table Facility_FacilityRole 
        drop constraint FK71F19D5274D3A01;

    alter table Facility_FacilityRole 
        drop constraint FK71F19D5911C11E2;

    alter table FinancialAccount 
        drop constraint FK28B20D8477B32CFB;

    alter table FinancialAccountRole 
        drop constraint FK3E4EA01AA38C4E11;

    alter table FinancialAccountTransaction 
        drop constraint FKB41792BA497E4BCE;

    alter table FinancialAccountTransaction 
        drop constraint FKB41792BAD038DAAD;

    alter table FinancialAccount_FinancialAccountRole 
        drop constraint FKAD0E07F560A8C397;

    alter table FinancialAccount_FinancialAccountRole 
        drop constraint FKAD0E07F5B40B9C75;

    alter table FinancialAccount_FinancialAccountTransaction 
        drop constraint FK7727AE7F60A8C397;

    alter table FinancialAccount_FinancialAccountTransaction 
        drop constraint FK7727AE7F5D99FE82;

    alter table FixedAssetDepreciationMethod 
        drop constraint FKCB6F09EACF766420;

    alter table FixedAsset_FixedAssetDepreciationMethod 
        drop constraint FKA3DAF4D7C473936;

    alter table FixedAsset_FixedAssetDepreciationMethod 
        drop constraint FKA3DAF4D3EE08320;

    alter table GeneralLedgerAccount_GlBudgetXref 
        drop constraint FK889357A81153D610;

    alter table GeneralLedgerAccount_GlBudgetXref 
        drop constraint FK889357A821800942;

    alter table GeneralLedgerAccount_OrganizationGlAccount 
        drop constraint FKBBE45A128BA7C0BB;

    alter table GeneralLedgerAccount_OrganizationGlAccount 
        drop constraint FKBBE45A1221800942;

    alter table GeographicBoundary 
        drop constraint FK2A6717E12293321A;

    alter table GeographicBoundary_ContactMechanism 
        drop constraint FKEF862FD7852172B2;

    alter table GeographicBoundary_ContactMechanism 
        drop constraint FKEF862FD7A3A07FEF;

    alter table GeographicBoundary_GeographicBoundary 
        drop constraint FK725A50FFF79D8F9;

    alter table GeographicBoundary_GeographicBoundary 
        drop constraint FK725A50FFA3A07FEF;

    alter table GeographicBoundary_GeographicBoundary 
        drop constraint FK725A50FF7915E1BB;

    alter table GeographicBoundary_ReorderGuideline 
        drop constraint FK3CE4E2F3F79D8F9;

    alter table GeographicBoundary_ReorderGuideline 
        drop constraint FK3CE4E2F347859402;

    alter table GeographicBoundary_SalesTaxLookup 
        drop constraint FK3AB331971CBCCE98;

    alter table GeographicBoundary_SalesTaxLookup 
        drop constraint FK3AB33197F79D8F9;

    alter table GlBudgetXref 
        drop constraint FK407360E56EC08C24;

    alter table GlBudgetXref 
        drop constraint FK407360E5C6249BC4;

    alter table GoodIdentification 
        drop constraint FK42D5BCABA07B3A0;

    alter table GoodIdentification 
        drop constraint FK42D5BCABEB4E1CD1;

    alter table IdentificationType_GoodIdentification 
        drop constraint FK4DB9EF6241A8B9D3;

    alter table IdentificationType_GoodIdentification 
        drop constraint FK4DB9EF62484C07AB;

    alter table InventoryItem 
        drop constraint FKD4AE2A6FC6ED3240;

    alter table InventoryItem 
        drop constraint FKD4AE2A6F7DB69EB4;

    alter table InventoryItem 
        drop constraint FKD4AE2A6FFD6155A;

    alter table InventoryItem 
        drop constraint FKD4AE2A6F6ECC9B91;

    alter table InventoryItem 
        drop constraint FKD4AE2A6F6B16EE6C;

    alter table InventoryItemVariance 
        drop constraint FK83EFAE00CEED610F;

    alter table InventoryItemVariance 
        drop constraint FK83EFAE00D96E31C0;

    alter table InvociceStatus 
        drop constraint FKE72BC29881793794;

    alter table InvociceStatus 
        drop constraint FKE72BC298F4624939;

    alter table Invoice 
        drop constraint FKD80EDB0DB21CF740;

    alter table InvoiceItem 
        drop constraint FK30037BC0DA24A95;

    alter table InvoiceItem 
        drop constraint FK30037BC08AAE811E;

    alter table InvoiceItem 
        drop constraint FK30037BC071A9BAB2;

    alter table InvoiceItem 
        drop constraint FK30037BC01FF2ED70;

    alter table InvoiceItem_InvoiceItem 
        drop constraint FK24D7B5C19A0226D8;

    alter table InvoiceItem_InvoiceItem 
        drop constraint FK24D7B5C11392F97E;

    alter table InvoiceItem_InvoiceItem 
        drop constraint FK24D7B5C115E17764;

    alter table InvoiceItem_InvoiceTerm 
        drop constraint FK24DC7F1A80C71C26;

    alter table InvoiceItem_InvoiceTerm 
        drop constraint FK24DC7F1A1392F97E;

    alter table InvoiceItem_OrderItemBilling 
        drop constraint FK88A87A791392F97E;

    alter table InvoiceItem_OrderItemBilling 
        drop constraint FK88A87A79BA10DBD0;

    alter table InvoiceItem_ShipmentItem 
        drop constraint FK8D345E0C1392F97E;

    alter table InvoiceItem_ShipmentItem 
        drop constraint FK8D345E0C7073492F;

    alter table InvoiceItem_TimeEntry 
        drop constraint FKF51D63C67A2FE939;

    alter table InvoiceItem_TimeEntry 
        drop constraint FKF51D63C61392F97E;

    alter table InvoiceItem_WorkEffortBilling 
        drop constraint FK15C7997FBA54FFFE;

    alter table InvoiceItem_WorkEffortBilling 
        drop constraint FK15C7997F1392F97E;

    alter table InvoiceTerm 
        drop constraint FK30084519DC56FECC;

    alter table InvoiceTerm 
        drop constraint FK3008451911BA808C;

    alter table InvoiceTerm 
        drop constraint FK30084519F669376D;

    alter table Invoice_InvoiceItem 
        drop constraint FK7135898E31801A35;

    alter table Invoice_InvoiceItem 
        drop constraint FK7135898E5673A43E;

    alter table Invoice_InvoiceRole 
        drop constraint FK71398EF15673A43E;

    alter table Invoice_InvoiceRole 
        drop constraint FK71398EF1C9E86227;

    alter table Invoice_InvoiceTerm 
        drop constraint FK713A52E780C71C26;

    alter table Invoice_InvoiceTerm 
        drop constraint FK713A52E75673A43E;

    alter table ItemIssuance 
        drop constraint FK58E444AEC1F58E87;

    alter table ItemIssuance 
        drop constraint FK58E444AEF2D63A8A;

    alter table ItemIssuance 
        drop constraint FK58E444AEC360AB2C;

    alter table ItemIssuanceRole 
        drop constraint FKEDD32449760AA8A;

    alter table ItemIssuanceRole 
        drop constraint FKEDD32444A2B216E;

    alter table Kase 
        drop constraint FK239248EDB1775;

    alter table MarketInterest 
        drop constraint FKADE36FA67F7CD03B;

    alter table MarketInterest 
        drop constraint FKADE36FA67DF74904;

    alter table OrderAdjustment 
        drop constraint FKBE3FBF3B2B41026C;

    alter table OrderAdjustment 
        drop constraint FKBE3FBF3BC2BCE140;

    alter table OrderContactMechanism 
        drop constraint FKE981C26722532B7B;

    alter table OrderContactMechanism 
        drop constraint FKE981C267C9BC972C;

    alter table OrderItem 
        drop constraint FK60163F61F147611A;

    alter table OrderItem 
        drop constraint FK60163F61C667D8E6;

    alter table OrderItem 
        drop constraint FK60163F6158E71243;

    alter table OrderItem 
        drop constraint FK60163F619E05FC5E;

    alter table OrderItem 
        drop constraint FK60163F61D3F6A6ED;

    alter table OrderItem 
        drop constraint FK60163F61626068C9;

    alter table OrderItem 
        drop constraint FK60163F6139E6892C;

    alter table OrderItemBilling 
        drop constraint FK9E339BDA9B03DE10;

    alter table OrderItemBilling 
        drop constraint FK9E339BDA88187B9E;

    alter table OrderItemContactMechanism 
        drop constraint FKE290A49A5505DD6D;

    alter table OrderItemContactMechanism 
        drop constraint FKE290A49AAE3AA30C;

    alter table OrderItemRole 
        drop constraint FKE25C9B77E2750694;

    alter table OrderItemRole 
        drop constraint FKE25C9B77DFB037F6;

    alter table OrderItem_OrderItem 
        drop constraint FK769274035CAD862C;

    alter table OrderItem_OrderItem 
        drop constraint FK76927403619F3333;

    alter table OrderItem_OrderItemContactMechanism 
        drop constraint FKDA3553C125BBF7F;

    alter table OrderItem_OrderItemContactMechanism 
        drop constraint FKDA3553C86B5B74;

    alter table OrderItem_OrderItemRole 
        drop constraint FK4089AF19125BBF7F;

    alter table OrderItem_OrderItemRole 
        drop constraint FK4089AF1981433F9C;

    alter table OrderRequirementCommitment 
        drop constraint FKD2DDED2A5A4CA048;

    alter table OrderRole 
        drop constraint FK601A44C4B23EAF83;

    alter table OrderRole 
        drop constraint FK601A44C412FD7383;

    alter table OrderRole 
        drop constraint FK601A44C44266D43;

    alter table OrderShipment 
        drop constraint FK7D675EE84C621AC5;

    alter table OrderShipment 
        drop constraint FK7D675EE8B978DF99;

    alter table OrderStatus 
        drop constraint FKC492B8C0F9F36B56;

    alter table OrderStatus 
        drop constraint FKC492B8C08078D383;

    alter table OrderStatus 
        drop constraint FKC492B8C03D04B316;

    alter table OrderTerm 
        drop constraint FK601B08BA360B0FF;

    alter table OrderTerm 
        drop constraint FK601B08BAFF172A8D;

    alter table OrderTerm 
        drop constraint FK601B08BA9D68F4BC;

    alter table Orders 
        drop constraint FK8D444F052ECBF93F;

    alter table Orders 
        drop constraint FK8D444F0567A4EB63;

    alter table Orders 
        drop constraint FK8D444F053C4432F3;

    alter table Orders 
        drop constraint FK8D444F0580390711;

    alter table Orders 
        drop constraint FK8D444F05AA5971BE;

    alter table Orders 
        drop constraint FK8D444F0555BB113E;

    alter table Orders 
        drop constraint FK8D444F05FD232AF5;

    alter table Orders 
        drop constraint FK8D444F0545CF2184;

    alter table Orders 
        drop constraint FK8D444F055CFEE9F6;

    alter table Orders_OrderAdjustment 
        drop constraint FKF778BA01B935CE04;

    alter table Orders_OrderAdjustment 
        drop constraint FKF778BA015EE7BC8;

    alter table Orders_OrderContactMechanism 
        drop constraint FK18A910AD723CAB6C;

    alter table Orders_OrderContactMechanism 
        drop constraint FK18A910AD5EE7BC8;

    alter table Orders_OrderItem 
        drop constraint FK4B3C46A71E31DB77;

    alter table Orders_OrderItem 
        drop constraint FK4B3C46A75EE7BC8;

    alter table Orders_OrderRole 
        drop constraint FK4B404C0AB69A2369;

    alter table Orders_OrderRole 
        drop constraint FK4B404C0A5EE7BC8;

    alter table Orders_OrderStatus 
        drop constraint FK7E5406863BA09391;

    alter table Orders_OrderStatus 
        drop constraint FK7E5406865EE7BC8;

    alter table Orders_OrderTerm 
        drop constraint FK4B4110005EE7BC8;

    alter table Orders_OrderTerm 
        drop constraint FK4B411000F2A05E6B;

    alter table OrganizationGlAccount 
        drop constraint FKAA7E657546412E82;

    alter table OrganizationGlAccount 
        drop constraint FKAA7E6575DEE7DD03;

    alter table OrganizationGlAccount_TransactionDetail 
        drop constraint FKD906B4654D2D12;

    alter table OrganizationGlAccount_TransactionDetail 
        drop constraint FKD906B4656B7E5B24;

    alter table PackagingContent 
        drop constraint FKB4A4CF965C801A37;

    alter table PartyBenefit 
        drop constraint FK394296F19696E767;

    alter table PartyBenefit 
        drop constraint FK394296F12E0316D8;

    alter table PartyClassification 
        drop constraint FK3608D84C8F1D09FA;

    alter table PartyContactMechanism 
        drop constraint FK8CDE25FFE5ED2F5A;

    alter table PartyContactMechanism 
        drop constraint FK8CDE25FF126B3FE7;

    alter table PartyContactMechanism 
        drop constraint FK8CDE25FFB3610671;

    alter table PartyContactMechanismPurpose 
        drop constraint FK383E821F6BE0F762;

    alter table PartyContactMechanismPurpose 
        drop constraint FK383E821FA55B61CE;

    alter table PartyPostalAddress 
        drop constraint FK7CE28383A85E8A4C;

    alter table PartyPostalAddress 
        drop constraint FK7CE28383F2111444;

    alter table PartyQualification 
        drop constraint FKF426D4C9189BD0DF;

    alter table PartyRate 
        drop constraint FKCFD18C6AA29763B;

    alter table PartyRate 
        drop constraint FKCFD18C6BAABFF74;

    alter table PartyRelationship 
        drop constraint FKBFACFC1E82C36B80;

    alter table PartyRelationship 
        drop constraint FKBFACFC1EC6C11FA7;

    alter table PartyRelationship 
        drop constraint FKBFACFC1E8BBDD720;

    alter table PartyRelationship 
        drop constraint FKBFACFC1E1223A6A7;

    alter table PartyRelationship 
        drop constraint FKBFACFC1EA480DF1;

    alter table PartyRelationship 
        drop constraint FKBFACFC1E96A2EB65;

    alter table PartyRole 
        drop constraint FKCFD4C5C9760AA8A;

    alter table PartyRole 
        drop constraint FKCFD4C5C35CC073;

    alter table PartyRole_ShipmentMethodType 
        drop constraint FK97DC51D81F85FC1A;

    alter table PartyRole_ShipmentMethodType 
        drop constraint FK97DC51D8545EBB4A;

    alter table PartySkill 
        drop constraint FK92B87B2B54523241;

    alter table PayGrade_SalaryStep 
        drop constraint FK8777B1E6D93B1DDB;

    alter table PayGrade_SalaryStep 
        drop constraint FK8777B1E61770E34A;

    alter table PayHistory 
        drop constraint FK38C81AEC515FD185;

    alter table PayHistory 
        drop constraint FK38C81AEC16C56BA1;

    alter table Payment 
        drop constraint FK3454C9E6E7BFD5D5;

    alter table Payment 
        drop constraint FK3454C9E61C660DF;

    alter table Payment 
        drop constraint FK3454C9E6AA8B466A;

    alter table PaymentApplication 
        drop constraint FKB3ABD78A86B93257;

    alter table PaymentApplication 
        drop constraint FKB3ABD78A18D48693;

    alter table PaymentBudgetAllocation 
        drop constraint FKD408CC0B50FC4512;

    alter table Payment_Deduction 
        drop constraint FKADAADD2CF0BB4DA6;

    alter table Payment_Deduction 
        drop constraint FKADAADD2C835C5918;

    alter table Payment_PaymentApplication 
        drop constraint FKD5C94E83825261B6;

    alter table Payment_PaymentApplication 
        drop constraint FKD5C94E83EB2AFD38;

    alter table Payment_PaymentBudgetAllocation 
        drop constraint FK80CBC8B2825261B6;

    alter table Payment_PaymentBudgetAllocation 
        drop constraint FK80CBC8B26DD23534;

    alter table PayrollPreference 
        drop constraint FK54DF0BC0E94855F4;

    alter table PerformanceNote 
        drop constraint FKB71754225920F01C;

    alter table PerformanceReview 
        drop constraint FK54DA4F88E137831A;

    alter table PerformanceReview 
        drop constraint FK54DA4F886D58EB5D;

    alter table PerformanceReviewItem 
        drop constraint FKB8BA3ABB8DDDDD58;

    alter table PerformanceReviewItem 
        drop constraint FKB8BA3ABB8B4C5A35;

    alter table PerformanceReviewItem 
        drop constraint FKB8BA3ABBA8F6AC6F;

    alter table PerformanceReview_PerformanceReviewItem 
        drop constraint FK3258F544DEAE021A;

    alter table PerformanceReview_PerformanceReviewItem 
        drop constraint FK3258F544829C6E15;

    alter table PersonTraining 
        drop constraint FKF002AF6FFA655C2E;

    alter table PickList_PicklistItem 
        drop constraint FK8D7EA3D2BD24932A;

    alter table PickList_PicklistItem 
        drop constraint FK8D7EA3D27618139C;

    alter table PicklistItem 
        drop constraint FK3A8244122F90D27F;

    alter table PicklistItem 
        drop constraint FK3A8244122170AF12;

    alter table PicklistItem_ItemIssuance 
        drop constraint FKF6817BBDFC997A1;

    alter table PicklistItem_ItemIssuance 
        drop constraint FKF6817BBC5402E4A;

    alter table Position 
        drop constraint FK306CFD4962FBE636;

    alter table Position 
        drop constraint FK306CFD493843CA34;

    alter table PositionFulfillment 
        drop constraint FK13BA04D5DC20DE9F;

    alter table PositionReportingStructure 
        drop constraint FK7930F40E6A7707FA;

    alter table PositionReportingStructure 
        drop constraint FK7930F40E4FB0A3F9;

    alter table PositionResponsibility 
        drop constraint FK31A1A3B7D0C9587A;

    alter table PositionResponsibility 
        drop constraint FK31A1A3B772289ECB;

    alter table PositionStatus 
        drop constraint FK61D4DE9B620AFE48;

    alter table PositionType 
        drop constraint FKBD33423FBA5E4;

    alter table PositionTypeClass 
        drop constraint FK5BA9A315179CC1BA;

    alter table PositionTypeClass 
        drop constraint FK5BA9A315190F6902;

    alter table PositionTypeRate 
        drop constraint FKC92D2BA3D80EC585;

    alter table PositionTypeRate 
        drop constraint FKC92D2BA3807341D2;

    alter table PositionTypeRate 
        drop constraint FKC92D2BA3190F6902;

    alter table PositionType_PositionTypeClass 
        drop constraint FKE5061DF98334B672;

    alter table PositionType_PositionTypeClass 
        drop constraint FKE5061DF95A5340EB;

    alter table PositionType_PositionTypeRate 
        drop constraint FKEEA3C43F2FE08A6B;

    alter table PositionType_PositionTypeRate 
        drop constraint FKEEA3C43F5A5340EB;

    alter table PositionType_ValidResponsibility 
        drop constraint FK93821AEE5A5340EB;

    alter table PositionType_ValidResponsibility 
        drop constraint FK93821AEE315C36F9;

    alter table Position_PositionFulfillment 
        drop constraint FK8D7310DFBB00783;

    alter table Position_PositionFulfillment 
        drop constraint FK8D7310DFB2C6D8FD;

    alter table Position_PositionResponsibility 
        drop constraint FK36C1A36DB2C6D8FD;

    alter table Position_PositionResponsibility 
        drop constraint FK36C1A36D7C7AC3FD;

    alter table PriceComponent 
        drop constraint FKCF0B9D45C782F67;

    alter table PriceComponent 
        drop constraint FKCF0B9D4AD82DD37;

    alter table PriceComponent 
        drop constraint FKCF0B9D4A6D0287;

    alter table PriceComponent 
        drop constraint FKCF0B9D4989AAC27;

    alter table PriceComponent 
        drop constraint FKCF0B9D4C82DD107;

    alter table PriceComponent 
        drop constraint FKCF0B9D4A9FAE883;

    alter table PriceComponent 
        drop constraint FKCF0B9D42BD152B6;

    alter table PriceComponent 
        drop constraint FKCF0B9D4D6ABD0ED;

    alter table PriceComponent 
        drop constraint FKCF0B9D4D1E6BBC7;

    alter table PriceComponent 
        drop constraint FKCF0B9D4219F5175;

    alter table PriceComponent 
        drop constraint FKCF0B9D47EB91429;

    alter table Product 
        drop constraint FK50C664CFA3E6DD93;

    alter table ProductCategory 
        drop constraint FKD05546ED65FABB27;

    alter table ProductCategoryClassification 
        drop constraint FK21D52433CBA503A4;

    alter table ProductCategoryClassification 
        drop constraint FK21D52433E7C01051;

    alter table ProductComponent 
        drop constraint FK898DD0EEAC269AD5;

    alter table ProductComponent 
        drop constraint FK898DD0EEDA00AF68;

    alter table ProductFeature 
        drop constraint FK81EF77273D9CE26F;

    alter table ProductFeatureCategory_ProductFeature 
        drop constraint FKB9681161A124B328;

    alter table ProductFeatureCategory_ProductFeature 
        drop constraint FKB9681161A99F0AEC;

    alter table ProductFeatureInteraction 
        drop constraint FKD3F4D06B1A8525F0;

    alter table ProductFeatureInteraction 
        drop constraint FKD3F4D06BA2085B97;

    alter table ProductFeatureInteraction 
        drop constraint FKD3F4D06B1169A7DE;

    alter table ProductFeature_ProductFeatureApplicability 
        drop constraint FKD1F6A7C6ED828713;

    alter table ProductFeature_ProductFeatureApplicability 
        drop constraint FKD1F6A7C67B96A18C;

    alter table ProductFeature_ProductFeatureInteraction 
        drop constraint FKD2ECED53FD6A4132;

    alter table ProductFeature_ProductFeatureInteraction 
        drop constraint FKD2ECED537B96A18C;

    alter table ProductObsolescence 
        drop constraint FK43FF56B26BBA5F92;

    alter table ProductObsolescence 
        drop constraint FK43FF56B2F6EE5B29;

    alter table ProductSubstitute 
        drop constraint FK96AC6EC9F779C640;

    alter table ProductSubstitute 
        drop constraint FK96AC6EC96BBA5F92;

    alter table Product_ProductComplement 
        drop constraint FK5AEFC8E5BBE575D6;

    alter table Product_ProductComplement 
        drop constraint FK5AEFC8E5B64D8340;

    alter table Product_ProductComplement 
        drop constraint FK5AEFC8E5E21915A6;

    alter table Product_ProductFeatureInteraction 
        drop constraint FKCBF898FB26386444;

    alter table Product_ProductFeatureInteraction 
        drop constraint FKCBF898FBB64D8340;

    alter table Product_ProductIncompatibility 
        drop constraint FKE8B6B90C3331AA31;

    alter table Product_ProductIncompatibility 
        drop constraint FKE8B6B90CB64D8340;

    alter table Product_ProductObsolescence 
        drop constraint FK5A68CB429AD0A6C1;

    alter table Product_ProductObsolescence 
        drop constraint FK5A68CB42B64D8340;

    alter table Product_ProductSubstitute 
        drop constraint FK4F09C759D3AE75FA;

    alter table Product_ProductSubstitute 
        drop constraint FK4F09C759B64D8340;

    alter table QuantityBreak_PriceComponent 
        drop constraint FK8513CA5FE8E6246A;

    alter table QuantityBreak_PriceComponent 
        drop constraint FK8513CA5F30A6F41B;

    alter table Quote 
        drop constraint FK4AC4E5C9156087B;

    alter table Quote 
        drop constraint FK4AC4E5CBB55D245;

    alter table QuoteItem 
        drop constraint FK1F08AF8FF42AC8DF;

    alter table QuoteItem 
        drop constraint FK1F08AF8F853C8286;

    alter table QuoteItem 
        drop constraint FK1F08AF8FB64D8340;

    alter table QuoteItem_OrderItem 
        drop constraint FK7E5102B19A7043ED;

    alter table QuoteItem_OrderItem 
        drop constraint FK7E5102B171568C0E;

    alter table QuoteItem_QuoteTerm 
        drop constraint FK3D483C384D4D7C4E;

    alter table QuoteItem_QuoteTerm 
        drop constraint FK3D483C389A7043ED;

    alter table QuoteRole 
        drop constraint FK1F0CB4F265AFBB57;

    alter table QuoteRole 
        drop constraint FK1F0CB4F291816A9F;

    alter table Quote_QuoteItem 
        drop constraint FK149CB56C2ABD7E2D;

    alter table Quote_QuoteItem 
        drop constraint FK149CB56CD9EA3E1C;

    alter table Quote_QuoteRole 
        drop constraint FK14A0BACF83DADF62;

    alter table Quote_QuoteRole 
        drop constraint FK14A0BACF2ABD7E2D;

    alter table Quote_QuoteTerm 
        drop constraint FK14A17EC54D4D7C4E;

    alter table Quote_QuoteTerm 
        drop constraint FK14A17EC52ABD7E2D;

    alter table Reason_InventoryItemVariance 
        drop constraint FK6A87CA65C1EAF367;

    alter table Reason_InventoryItemVariance 
        drop constraint FK6A87CA6544DA61FD;

    alter table RelationshipType 
        drop constraint FK6E3AE1B22F2795E2;

    alter table RelationshipType 
        drop constraint FK6E3AE1B2D9654953;

    alter table ReorderGuideline 
        drop constraint FK5DD9FA5582E77F91;

    alter table ReorderGuideline 
        drop constraint FK5DD9FA555C782F67;

    alter table ReorderGuideline 
        drop constraint FK5DD9FA55CB9EEBD8;

    alter table ReorderGuideline 
        drop constraint FK5DD9FA551D30F9D0;

    alter table RequestItem 
        drop constraint FKA7F1AA226E130EED;

    alter table RequestItem_RequirementRequest 
        drop constraint FKD8A47E29CC6D2120;

    alter table RequestItem_RequirementRequest 
        drop constraint FKD8A47E29315DADA9;

    alter table RequestRole 
        drop constraint FKA7F5AF8565AFBB57;

    alter table RequestRole 
        drop constraint FKA7F5AF8546C4930F;

    alter table Request_RequestItem 
        drop constraint FKA1366452B146ECE0;

    alter table Request_RequestItem 
        drop constraint FKA13664526662FAC2;

    alter table Request_RequestRole 
        drop constraint FKA13A69B5B146ECE0;

    alter table Request_RequestRole 
        drop constraint FKA13A69B510539C08;

    alter table Request_RespondingParty 
        drop constraint FKDA6DA5C9B146ECE0;

    alter table Request_RespondingParty 
        drop constraint FKDA6DA5C9DEA7D762;

    alter table Requirement 
        drop constraint FK791284238E8B6DD4;

    alter table Requirement 
        drop constraint FK79128423C6A87ABC;

    alter table Requirement 
        drop constraint FK79128423AEA88BBD;

    alter table Requirement 
        drop constraint FK7912842351F9A04E;

    alter table RequirementRequest 
        drop constraint FK8221A8EC6D4ADE96;

    alter table RequirementRequest 
        drop constraint FK8221A8EC12A3E205;

    alter table RequirementRole 
        drop constraint FKE644AF39E2750694;

    alter table RequirementRole 
        drop constraint FKE644AF397581C2AD;

    alter table RequirementRole 
        drop constraint FKE644AF39E364C691;

    alter table RequirementStatus 
        drop constraint FK69CC59F57EB200E9;

    alter table Requirement_DesiredFeature 
        drop constraint FKA2D3EB8EE8765BB;

    alter table Requirement_DesiredFeature 
        drop constraint FKA2D3EB8E79C7AF1;

    alter table Requirement_OrderRequirementCommitment 
        drop constraint FK380222C666857D14;

    alter table Requirement_OrderRequirementCommitment 
        drop constraint FK380222C6470E9A1E;

    alter table Requirement_Requirement 
        drop constraint FKED554A0766857D14;

    alter table Requirement_Requirement 
        drop constraint FKED554A077FCEA767;

    alter table Requirement_RequirementBudgetAllocation 
        drop constraint FKE1EEEA2CA372E443;

    alter table Requirement_RequirementBudgetAllocation 
        drop constraint FKE1EEEA2C66857D14;

    alter table Requirement_RequirementStatus 
        drop constraint FK6D3424D936076157;

    alter table Requirement_RequirementStatus 
        drop constraint FK6D3424D966857D14;

    alter table RespondingParty 
        drop constraint FKE3718399C9BC972C;

    alter table RespondingParty 
        drop constraint FKE371839965AFBB57;

    alter table ResponsibilityType_ValidResponsibility 
        drop constraint FK925818D37D6A04FD;

    alter table ResponsibilityType_ValidResponsibility 
        drop constraint FK925818D3D4C9B38E;

    alter table SalaryStep 
        drop constraint FK9522BD611009533;

    alter table SalaryStep_PayHistory 
        drop constraint FKE5BA2F565FDADD3;

    alter table SalaryStep_PayHistory 
        drop constraint FKE5BA2F5E0C2507B;

    alter table SalaryStep_PositionTypeRate 
        drop constraint FK1012C8ECCF0A634E;

    alter table SalaryStep_PositionTypeRate 
        drop constraint FK1012C8ECE0C2507B;

    alter table SalesTaxLookup 
        drop constraint FKAB6AB979A4389CB8;

    alter table SalesTaxLookup 
        drop constraint FKAB6AB9799C7A0D6A;

    alter table Shipment 
        drop constraint FKE513D5BAECE8D5E;

    alter table Shipment 
        drop constraint FKE513D5BA77F9B065;

    alter table Shipment 
        drop constraint FKE513D5BAAD42BA53;

    alter table Shipment 
        drop constraint FKE513D5BAAD3F508F;

    alter table Shipment 
        drop constraint FKE513D5BA6D4301D4;

    alter table ShipmentItem 
        drop constraint FKE78157ED9CB50DC0;

    alter table ShipmentItem_OrderShipment 
        drop constraint FK41B3A616F1B60CCF;

    alter table ShipmentItem_OrderShipment 
        drop constraint FK41B3A6163B6A875D;

    alter table ShipmentItem_ProductFeature 
        drop constraint FK472C15B9EF43ADA;

    alter table ShipmentItem_ProductFeature 
        drop constraint FK472C15B93B6A875D;

    alter table ShipmentItem_ShipmentItem 
        drop constraint FKF61872FF22FE0A04;

    alter table ShipmentItem_ShipmentItem 
        drop constraint FKF61872FF3B6A875D;

    alter table ShipmentPackage_PackagingContent 
        drop constraint FKB3463E49CB6D6F40;

    alter table ShipmentPackage_PackagingContent 
        drop constraint FKB3463E497E41B1E1;

    alter table ShipmentPackage_ShipmentReceipt 
        drop constraint FK26249E0B7E41B1E1;

    alter table ShipmentPackage_ShipmentReceipt 
        drop constraint FK26249E0BA4EFB39F;

    alter table ShipmentReceipt 
        drop constraint FK47382F1EA875A6AD;

    alter table ShipmentReceipt 
        drop constraint FK47382F1E125BBF7F;

    alter table ShipmentReceipt 
        drop constraint FK47382F1E7E41B1E1;

    alter table ShipmentReceipt 
        drop constraint FK47382F1EF95BC681;

    alter table ShipmentReceipt 
        drop constraint FK47382F1ECDF06A74;

    alter table ShipmentReceiptRole 
        drop constraint FK835664B465AFBB57;

    alter table ShipmentReceiptRole 
        drop constraint FK835664B46A886F35;

    alter table ShipmentReceipt_ShipmentReceiptRole 
        drop constraint FK829C6613F94A94A1;

    alter table ShipmentReceipt_ShipmentReceiptRole 
        drop constraint FK829C6613CF179EF8;

    alter table ShipmentRouteSegment 
        drop constraint FKDF867384B5C7C197;

    alter table ShipmentRouteSegment 
        drop constraint FKDF8673842929BD61;

    alter table ShipmentRouteSegment 
        drop constraint FKDF86738428DF06C8;

    alter table ShipmentRouteSegment 
        drop constraint FKDF867384D42342DC;

    alter table ShipmentRouteSegment 
        drop constraint FKDF867384CA1216E6;

    alter table ShipmentStatus 
        drop constraint FK1D99DE4C587F1629;

    alter table Shipment_ShipmentItem 
        drop constraint FK3FD38A528AC2F99D;

    alter table Shipment_ShipmentItem 
        drop constraint FK3FD38A52249AD26A;

    alter table Shipment_ShipmentStatus 
        drop constraint FKAA290B718AC2F99D;

    alter table Shipment_ShipmentStatus 
        drop constraint FKAA290B7198CB27A9;

    alter table StandardTimePeriod 
        drop constraint FK2DB3D5AB8E0EE3E1;

    alter table SupplierProduct 
        drop constraint FK2832C563C7B0AAB0;

    alter table SupplierProduct 
        drop constraint FK2832C563E73A77FE;

    alter table SupplierProduct 
        drop constraint FK2832C5633ECBBE3B;

    alter table SupplierProduct 
        drop constraint FK2832C56351A0110B;

    alter table TimeEntry 
        drop constraint FK78309D859BA2FAC2;

    alter table Timesheet 
        drop constraint FK7AB5E292F8C1F579;

    alter table TimesheetRole 
        drop constraint FK91253E2812FD7383;

    alter table TimesheetRole 
        drop constraint FK91253E2851C2F713;

    alter table Timesheet_TimeEntry 
        drop constraint FK4C22EC18AFC536CB;

    alter table Timesheet_TimeEntry 
        drop constraint FK4C22EC1832C27B20;

    alter table Timesheet_TimesheetRole 
        drop constraint FK6F580B3BAFC536CB;

    alter table Timesheet_TimesheetRole 
        drop constraint FK6F580B3BA9B1F559;

    alter table TransactionDetail 
        drop constraint FK6875F8AF3A5D6221;

    alter table TransactionDetail 
        drop constraint FK6875F8AFC0AF7E45;

    alter table TransactionDetail 
        drop constraint FK6875F8AFCB93229E;

    alter table UnemploymentClaim 
        drop constraint FK93F4B3D710DCE83F;

    alter table UnemploymentClaim 
        drop constraint FK93F4B3D72E16EB4A;

    alter table UnitOfMeasureConversion 
        drop constraint FK3BF093B937BF1FB5;

    alter table UnitOfMeasureConversion 
        drop constraint FK3BF093B911330608;

    alter table UnitOfMeasure_UnitOfMeasureConversion 
        drop constraint FKC3B1E9BDDB65AE4E;

    alter table UnitOfMeasure_UnitOfMeasureConversion 
        drop constraint FKC3B1E9BD761868B;

    alter table UnitOfMeasure_UnitOfMeasureConversion 
        drop constraint FKC3B1E9BD9D46859A;

    alter table ValidResponsibility 
        drop constraint FKEF58C90A80EE4562;

    alter table ValidResponsibility 
        drop constraint FKEF58C90ABBCE3025;

    alter table WorkEfforAssociation 
        drop constraint FKF3102C2AFC202371;

    alter table WorkEfforAssociation 
        drop constraint FKF3102C2A9801162;

    alter table WorkEffort 
        drop constraint FK28AE1F7D62A06203;

    alter table WorkEffort 
        drop constraint FK28AE1F7D189B0292;

    alter table WorkEffort 
        drop constraint FK28AE1F7DF1547850;

    alter table WorkEffortAssignmentRate 
        drop constraint FKB1DDA62A8F6A70F3;

    alter table WorkEffortAssignmentRate 
        drop constraint FKB1DDA62AAA29763B;

    alter table WorkEffortBilling 
        drop constraint FKB1A0A43E40D0D581;

    alter table WorkEffortInvenotryAssignment 
        drop constraint FKA8AD9EF6F1909D1E;

    alter table WorkEffortPartyAssignment 
        drop constraint FKE431A516740D2D44;

    alter table WorkEffortPartyAssignment 
        drop constraint FKE431A5161B26331D;

    alter table WorkEffortPartyAssignment 
        drop constraint FKE431A516869FFF6F;

    alter table WorkEffortPartyAssignment_ShipmentItem 
        drop constraint FKF9929076ABD239F4;

    alter table WorkEffortPartyAssignment_ShipmentItem 
        drop constraint FKF99290767073492F;

    alter table WorkEffortSkill 
        drop constraint FKD45EE0D496B35AD0;

    alter table WorkEffortStatus 
        drop constraint FKB7F889CF66673004;

    alter table WorkEffortType 
        drop constraint FKDD901C5794EC8828;

    alter table WorkEffortType 
        drop constraint FKDD901C57F0B57FD6;

    alter table WorkEffortType_WorkEffortGoodStandard 
        drop constraint FKFA8AE79F2BE4F273;

    alter table WorkEffortType_WorkEffortGoodStandard 
        drop constraint FKFA8AE79FAEF747E7;

    alter table WorkEffortType_WorkEffortType 
        drop constraint FK2343553FBECD64B4;

    alter table WorkEffortType_WorkEffortType 
        drop constraint FK2343553F5A2B6064;

    alter table WorkEffortType_WorkEffortType 
        drop constraint FK2343553F2BE4F273;

    alter table WorkEffort_InventoryItem 
        drop constraint FK782ABD2DE34DFE9C;

    alter table WorkEffort_InventoryItem 
        drop constraint FK782ABD2D4C3DA019;

    alter table WorkEffort_InventoryItem 
        drop constraint FK782ABD2DBFB3ACB5;

    alter table WorkEffort_OrderItem 
        drop constraint FK13D5E11FF4C38923;

    alter table WorkEffort_OrderItem 
        drop constraint FK13D5E11FBFB3ACB5;

    alter table WorkEffort_Requirement 
        drop constraint FK3B70AE619A792BC7;

    alter table WorkEffort_Requirement 
        drop constraint FK3B70AE61BFB3ACB5;

    alter table WorkEffort_TimeEntry 
        drop constraint FK2BF03F43941AEE8C;

    alter table WorkEffort_TimeEntry 
        drop constraint FK2BF03F43BFB3ACB5;

    alter table WorkEffort_WorkEffortInvenotryAssignment 
        drop constraint FK92D8F5B4A5AA3211;

    alter table WorkEffort_WorkEffortInvenotryAssignment 
        drop constraint FK92D8F5B4BFB3ACB5;

    alter table WorkEffort_WorkEffortPartyAssignment 
        drop constraint FKECA20AD43631B38A;

    alter table WorkEffort_WorkEffortPartyAssignment 
        drop constraint FKECA20AD4BFB3ACB5;

    drop table AccountingPeriod;

    drop table AccountingTransaction;

    drop table AccountingTransactionType;

    drop table AccountingTransaction_TransactionDetail;

    drop table Addendum;

    drop table Agreement;

    drop table AgreementItem;

    drop table AgreementItem_Addendum;

    drop table AgreementItem_AgreementItem;

    drop table AgreementItem_GeographicBoundary;

    drop table AgreementItem_Party;

    drop table AgreementItem_PriceComponent;

    drop table AgreementItem_Product;

    drop table AgreementRole;

    drop table AgreementRoleType;

    drop table AgreementTerm;

    drop table AgreementType;

    drop table Agreement_Addendum;

    drop table Agreement_AgreementItem;

    drop table Agreement_AgreementRole;

    drop table Agreement_AgreementTerm;

    drop table Agreement_GeographicBoundary;

    drop table BenefitType;

    drop table BenefitType_PartyBenefit;

    drop table BillingAccount;

    drop table BillingAccountRole;

    drop table BillingAccountRoleType;

    drop table BillingAccount_BillingAccountRole;

    drop table BillingAccount_Invoice;

    drop table Budget;

    drop table BudgetItem;

    drop table BudgetItemType;

    drop table BudgetItemType_GlBudgetXref;

    drop table BudgetItem_BudgetItem;

    drop table BudgetItem_BudgetRevisionImpact;

    drop table BudgetItem_OrderItem;

    drop table BudgetItem_PaymentBudgetAllocation;

    drop table BudgetItem_RequirementBudgetAllocation;

    drop table BudgetReview;

    drop table BudgetReviewResultType;

    drop table BudgetRevision;

    drop table BudgetRevisionImpact;

    drop table BudgetRevision_BudgetRevisionImpact;

    drop table BudgetRole;

    drop table BudgetRoleType;

    drop table BudgetScenario;

    drop table BudgetScenarioApplication;

    drop table BudgetScenarioRule;

    drop table BudgetScenario_BudgetScenarioApplication;

    drop table BudgetScenario_BudgetScenarioRule;

    drop table BudgetStatus;

    drop table BudgetStatusType;

    drop table BudgetType;

    drop table Budget_BudgetItem;

    drop table Budget_BudgetReview;

    drop table Budget_BudgetRevision;

    drop table Budget_BudgetRole;

    drop table Budget_BudgetStatus;

    drop table CaseRole;

    drop table CaseRoleType;

    drop table CaseStatusType;

    drop table CommunicationEvent;

    drop table CommunicationEventPurpose;

    drop table CommunicationEventPurposeType;

    drop table CommunicationEventRole;

    drop table CommunicationEventRoleType;

    drop table CommunicationEventStatusType;

    drop table CommunicationEventWorkEffort;

    drop table CommunicationEvent_CommunicationEventPurpose;

    drop table CommunicationEvent_Kase;

    drop table ContactMechanism;

    drop table ContactMechanismPurposeType;

    drop table ContactMechanism_PartyPostalAddress;

    drop table Container;

    drop table ContainerType;

    drop table CostComponentType;

    drop table Deduction;

    drop table DeductionType;

    drop table Deliverable;

    drop table DeliverableType;

    drop table Deliverable_Requirement;

    drop table DepreciationMethod;

    drop table DesiredFeature;

    drop table Document;

    drop table EmploymentApplication;

    drop table EmploymentApplicationStatusType;

    drop table EmploymnetApplicationSourceType;

    drop table EstimatedProductCost;

    drop table Facility;

    drop table FacilityContactMechanism;

    drop table FacilityRole;

    drop table FacilityRoleType;

    drop table Facility_Facility;

    drop table Facility_FacilityContactMechanism;

    drop table Facility_FacilityRole;

    drop table FinancialAccount;

    drop table FinancialAccountRole;

    drop table FinancialAccountRoleType;

    drop table FinancialAccountTransaction;

    drop table FinancialAccountType;

    drop table FinancialAccount_FinancialAccountRole;

    drop table FinancialAccount_FinancialAccountTransaction;

    drop table FixedAsset;

    drop table FixedAssetDepreciationMethod;

    drop table FixedAsset_FixedAssetDepreciationMethod;

    drop table GeneralLedgerAccount;

    drop table GeneralLedgerAccount_GlBudgetXref;

    drop table GeneralLedgerAccount_OrganizationGlAccount;

    drop table GeographicBoundary;

    drop table GeographicBoundaryType;

    drop table GeographicBoundary_ContactMechanism;

    drop table GeographicBoundary_GeographicBoundary;

    drop table GeographicBoundary_ReorderGuideline;

    drop table GeographicBoundary_SalesTaxLookup;

    drop table GlBudgetXref;

    drop table GoodIdentification;

    drop table IdentificationType;

    drop table IdentificationType_GoodIdentification;

    drop table InventoryItem;

    drop table InventoryItemStatusType;

    drop table InventoryItemVariance;

    drop table InvociceStatus;

    drop table Invoice;

    drop table InvoiceItem;

    drop table InvoiceItemType;

    drop table InvoiceItem_InvoiceItem;

    drop table InvoiceItem_InvoiceTerm;

    drop table InvoiceItem_OrderItemBilling;

    drop table InvoiceItem_ShipmentItem;

    drop table InvoiceItem_TimeEntry;

    drop table InvoiceItem_WorkEffortBilling;

    drop table InvoiceRole;

    drop table InvoiceStatusType;

    drop table InvoiceTerm;

    drop table InvoiceTermType;

    drop table Invoice_InvoiceItem;

    drop table Invoice_InvoiceRole;

    drop table Invoice_InvoiceTerm;

    drop table ItemIssuance;

    drop table ItemIssuanceRole;

    drop table ItemIssuanceRoleType;

    drop table Kase;

    drop table Lot;

    drop table MarketInterest;

    drop table OrderAdjustment;

    drop table OrderAdjustmentType;

    drop table OrderContactMechanism;

    drop table OrderItem;

    drop table OrderItemBilling;

    drop table OrderItemContactMechanism;

    drop table OrderItemRole;

    drop table OrderItemRoleType;

    drop table OrderItem_OrderItem;

    drop table OrderItem_OrderItemContactMechanism;

    drop table OrderItem_OrderItemRole;

    drop table OrderRequirementCommitment;

    drop table OrderRole;

    drop table OrderRoleType;

    drop table OrderShipment;

    drop table OrderStatus;

    drop table OrderStatusType;

    drop table OrderTerm;

    drop table OrderTermType;

    drop table OrderValue;

    drop table Orders;

    drop table Orders_OrderAdjustment;

    drop table Orders_OrderContactMechanism;

    drop table Orders_OrderItem;

    drop table Orders_OrderRole;

    drop table Orders_OrderStatus;

    drop table Orders_OrderTerm;

    drop table OrganizationGlAccount;

    drop table OrganizationGlAccount_TransactionDetail;

    drop table PackagingContent;

    drop table Party;

    drop table PartyBenefit;

    drop table PartyClassification;

    drop table PartyContactMechanism;

    drop table PartyContactMechanismPurpose;

    drop table PartyPostalAddress;

    drop table PartyQualification;

    drop table PartyRate;

    drop table PartyRelationship;

    drop table PartyRole;

    drop table PartyRoleType;

    drop table PartyRole_ShipmentMethodType;

    drop table PartySkill;

    drop table PayGrade;

    drop table PayGrade_SalaryStep;

    drop table PayHistory;

    drop table Payment;

    drop table PaymentApplication;

    drop table PaymentBudgetAllocation;

    drop table PaymentMethodType;

    drop table Payment_Deduction;

    drop table Payment_PaymentApplication;

    drop table Payment_PaymentBudgetAllocation;

    drop table PayrollPreference;

    drop table PerformanceNote;

    drop table PerformanceNoteType;

    drop table PerformanceRatingType;

    drop table PerformanceReview;

    drop table PerformanceReviewItem;

    drop table PerformanceReviewItemType;

    drop table PerformanceReview_PerformanceReviewItem;

    drop table PeriodType;

    drop table PersonTraining;

    drop table PickList;

    drop table PickList_PicklistItem;

    drop table PicklistItem;

    drop table PicklistItem_ItemIssuance;

    drop table Position;

    drop table PositionClassificationType;

    drop table PositionFulfillment;

    drop table PositionReportingStructure;

    drop table PositionResponsibility;

    drop table PositionStatus;

    drop table PositionStatusType;

    drop table PositionType;

    drop table PositionTypeClass;

    drop table PositionTypeRate;

    drop table PositionType_PositionTypeClass;

    drop table PositionType_PositionTypeRate;

    drop table PositionType_ValidResponsibility;

    drop table Position_PositionFulfillment;

    drop table Position_PositionResponsibility;

    drop table PreferenceType;

    drop table PriceComponent;

    drop table PriorityType;

    drop table Product;

    drop table ProductCategory;

    drop table ProductCategoryClassification;

    drop table ProductComplement;

    drop table ProductComponent;

    drop table ProductFeature;

    drop table ProductFeatureApplicability;

    drop table ProductFeatureCategory;

    drop table ProductFeatureCategory_ProductFeature;

    drop table ProductFeatureInteraction;

    drop table ProductFeature_ProductFeatureApplicability;

    drop table ProductFeature_ProductFeatureInteraction;

    drop table ProductIncompatibility;

    drop table ProductObsolescence;

    drop table ProductSubstitute;

    drop table Product_ProductComplement;

    drop table Product_ProductFeatureInteraction;

    drop table Product_ProductIncompatibility;

    drop table Product_ProductObsolescence;

    drop table Product_ProductSubstitute;

    drop table QualificationType;

    drop table QuantityBreak;

    drop table QuantityBreak_PriceComponent;

    drop table Quote;

    drop table QuoteItem;

    drop table QuoteItem_OrderItem;

    drop table QuoteItem_QuoteTerm;

    drop table QuoteRole;

    drop table QuoteRoleType;

    drop table QuoteTerm;

    drop table Quote_QuoteItem;

    drop table Quote_QuoteRole;

    drop table Quote_QuoteTerm;

    drop table RateType;

    drop table RatingType;

    drop table Reason;

    drop table Reason_InventoryItemVariance;

    drop table RejectionReason;

    drop table RelationshipType;

    drop table ReorderGuideline;

    drop table Request;

    drop table RequestItem;

    drop table RequestItem_RequirementRequest;

    drop table RequestRole;

    drop table RequestRoleType;

    drop table Request_RequestItem;

    drop table Request_RequestRole;

    drop table Request_RespondingParty;

    drop table Requirement;

    drop table RequirementBudgetAllocation;

    drop table RequirementRequest;

    drop table RequirementRole;

    drop table RequirementRoleType;

    drop table RequirementStatus;

    drop table RequirementStatusType;

    drop table Requirement_DesiredFeature;

    drop table Requirement_OrderRequirementCommitment;

    drop table Requirement_Requirement;

    drop table Requirement_RequirementBudgetAllocation;

    drop table Requirement_RequirementStatus;

    drop table RespondingParty;

    drop table ResponsibilityType;

    drop table ResponsibilityType_ValidResponsibility;

    drop table Resume;

    drop table SalaryStep;

    drop table SalaryStep_PayHistory;

    drop table SalaryStep_PositionTypeRate;

    drop table SaleType;

    drop table SalesTaxLookup;

    drop table Shipment;

    drop table ShipmentItem;

    drop table ShipmentItem_OrderShipment;

    drop table ShipmentItem_ProductFeature;

    drop table ShipmentItem_ShipmentItem;

    drop table ShipmentMethodType;

    drop table ShipmentPackage;

    drop table ShipmentPackage_PackagingContent;

    drop table ShipmentPackage_ShipmentReceipt;

    drop table ShipmentReceipt;

    drop table ShipmentReceiptRole;

    drop table ShipmentReceiptRoleType;

    drop table ShipmentReceipt_ShipmentReceiptRole;

    drop table ShipmentRouteSegment;

    drop table ShipmentStatus;

    drop table ShipmentStatusType;

    drop table Shipment_ShipmentItem;

    drop table Shipment_ShipmentStatus;

    drop table SkillType;

    drop table StandardTimePeriod;

    drop table StatusType;

    drop table SupplierProduct;

    drop table TermType;

    drop table TerminationReason;

    drop table TerminationType;

    drop table TimeEntry;

    drop table TimeSheetRoleType;

    drop table Timesheet;

    drop table TimesheetRole;

    drop table Timesheet_TimeEntry;

    drop table Timesheet_TimesheetRole;

    drop table TrainingClassType;

    drop table TransactionDetail;

    drop table UnemploymentClaim;

    drop table UnemploymentClaimStatusType;

    drop table UnitOfMeasure;

    drop table UnitOfMeasureConversion;

    drop table UnitOfMeasure_UnitOfMeasureConversion;

    drop table ValidResponsibility;

    drop table WorkEfforAssociation;

    drop table WorkEffort;

    drop table WorkEffortAssignmentRate;

    drop table WorkEffortBilling;

    drop table WorkEffortGoodStandard;

    drop table WorkEffortInvenotryAssignment;

    drop table WorkEffortPartyAssignment;

    drop table WorkEffortPartyAssignment_ShipmentItem;

    drop table WorkEffortRoleType;

    drop table WorkEffortSkill;

    drop table WorkEffortStatus;

    drop table WorkEffortStatusType;

    drop table WorkEffortType;

    drop table WorkEffortType_WorkEffortGoodStandard;

    drop table WorkEffortType_WorkEffortType;

    drop table WorkEffort_InventoryItem;

    drop table WorkEffort_OrderItem;

    drop table WorkEffort_Requirement;

    drop table WorkEffort_TimeEntry;

    drop table WorkEffort_WorkEffortInvenotryAssignment;

    drop table WorkEffort_WorkEffortPartyAssignment;

    drop sequence hibernate_sequence;

    create table AccountingPeriod (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        accountingPeriodNumber int4 not null,
        accountPeriodFor_id int8,
        definedBy_id int8,
        primary key (id)
    );

    create table AccountingTransaction (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        description text,
        entryDate timestamp,
        transactionDate timestamp,
        partyFrom bytea,
        partyTo bytea,
        orignatedFrom bytea,
        originatedFrom bytea,
        transactionFrom bytea,
        describedBy_id int8,
        originatedFrom_id int8,
        forFixedAsset_id int8,
        primary key (id)
    );

    create table AccountingTransactionType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table AccountingTransaction_TransactionDetail (
        AccountingTransaction_id int8 not null,
        composedOf_id int8 not null,
        unique (composedOf_id)
    );

    create table Addendum (
        id int8 not null,
        version int8,
        creationDate date,
        effectiveDate date,
        text text,
        primary key (id)
    );

    create table Agreement (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        agreementDate timestamp,
        description text,
        text text,
        type bytea,
        associatedWith_id int8,
        primary key (id)
    );

    create table AgreementItem (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        image varchar(255),
        sequenceId int4 not null,
        text text,
        partOf_id int8,
        primary key (id)
    );

    create table AgreementItem_Addendum (
        AgreementItem_id int8 not null,
        addendums_id int8 not null,
        unique (addendums_id)
    );

    create table AgreementItem_AgreementItem (
        AgreementItem_id int8 not null,
        composedOf_id int8 not null,
        unique (composedOf_id)
    );

    create table AgreementItem_GeographicBoundary (
        AgreementItem_id int8 not null,
        geographicBoundaries_id int8 not null,
        unique (geographicBoundaries_id)
    );

    create table AgreementItem_Party (
        AgreementItem_id int8 not null,
        organizations_id int8 not null,
        unique (organizations_id)
    );

    create table AgreementItem_PriceComponent (
        AgreementItem_id int8 not null,
        priceComponents_id int8 not null,
        unique (priceComponents_id)
    );

    create table AgreementItem_Product (
        AgreementItem_id int8 not null,
        products_id int8 not null,
        unique (products_id)
    );

    create table AgreementRole (
        id int8 not null,
        version int8,
        party_id int8,
        type_id int8,
        primary key (id)
    );

    create table AgreementRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table AgreementTerm (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        value numeric(19, 2),
        agreement_id int8,
        agreementItem_id int8,
        primary key (id)
    );

    create table AgreementType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Agreement_Addendum (
        Agreement_id int8 not null,
        addendums_id int8 not null,
        unique (addendums_id)
    );

    create table Agreement_AgreementItem (
        Agreement_id int8 not null,
        items_id int8 not null,
        unique (items_id)
    );

    create table Agreement_AgreementRole (
        Agreement_id int8 not null,
        roles_id int8 not null,
        unique (roles_id)
    );

    create table Agreement_AgreementTerm (
        Agreement_id int8 not null,
        terms_id int8 not null,
        unique (terms_id)
    );

    create table Agreement_GeographicBoundary (
        Agreement_id int8 not null,
        geographicalApplicability_id int8 not null,
        unique (geographicalApplicability_id)
    );

    create table BenefitType (
        id int8 not null,
        version int8,
        description varchar(255),
        employerPercentage int4 not null,
        name varchar(255),
        primary key (id)
    );

    create table BenefitType_PartyBenefit (
        BenefitType_id int8 not null,
        partyBenefits_id int8 not null,
        unique (partyBenefits_id)
    );

    create table BillingAccount (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        billedAt bytea,
        description varchar(255),
        primary key (id)
    );

    create table BillingAccountRole (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        accountFor bytea,
        roleFor_id int8,
        type_id int8,
        primary key (id)
    );

    create table BillingAccountRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table BillingAccount_BillingAccountRole (
        BillingAccount_id int8 not null,
        usedBy_id int8 not null,
        unique (usedBy_id)
    );

    create table BillingAccount_Invoice (
        BillingAccount_id int8 not null,
        billedFor_id int8 not null,
        unique (billedFor_id)
    );

    create table Budget (
        id int8 not null,
        version int8,
        comment varchar(255),
        associatedWith_id int8,
        type_id int8,
        primary key (id)
    );

    create table BudgetItem (
        id int8 not null,
        version int8,
        amount numeric(19, 2),
        justification varchar(255),
        purpose varchar(255),
        type_id int8,
        primary key (id)
    );

    create table BudgetItemType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table BudgetItemType_GlBudgetXref (
        BudgetItemType_id int8 not null,
        assignedTo_id int8 not null,
        unique (assignedTo_id)
    );

    create table BudgetItem_BudgetItem (
        BudgetItem_id int8 not null,
        composedOf_id int8 not null
    );

    create table BudgetItem_BudgetRevisionImpact (
        BudgetItem_id int8 not null,
        affectedBy_id int8 not null,
        unique (affectedBy_id)
    );

    create table BudgetItem_OrderItem (
        BudgetItem_id int8 not null,
        usedToBuy_id int8 not null,
        unique (usedToBuy_id)
    );

    create table BudgetItem_PaymentBudgetAllocation (
        BudgetItem_id int8 not null,
        usedToPay_id int8 not null,
        unique (usedToPay_id)
    );

    create table BudgetItem_RequirementBudgetAllocation (
        BudgetItem_id int8 not null,
        providesFundingVia_id int8 not null,
        unique (providesFundingVia_id)
    );

    create table BudgetReview (
        id int8 not null,
        version int8,
        comment varchar(255),
        ofParty bytea,
        reviewDate timestamp,
        forBudget_id int8,
        result_id int8,
        primary key (id)
    );

    create table BudgetReviewResultType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table BudgetRevision (
        id int8 not null,
        version int8,
        revisedOn timestamp,
        sequence int8 not null,
        revisionFor_id int8,
        primary key (id)
    );

    create table BudgetRevisionImpact (
        id int8 not null,
        version int8,
        addDelete bool,
        reason varchar(255),
        revisedAmount numeric(19, 2),
        affects_id int8,
        fromBudgetRevision_id int8,
        primary key (id)
    );

    create table BudgetRevision_BudgetRevisionImpact (
        BudgetRevision_id int8 not null,
        affecting_id int8 not null,
        unique (affecting_id)
    );

    create table BudgetRole (
        id int8 not null,
        version int8,
        forParty bytea,
        type_id int8,
        primary key (id)
    );

    create table BudgetRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table BudgetScenario (
        id int8 not null,
        version int8,
        description varchar(255),
        primary key (id)
    );

    create table BudgetScenarioApplication (
        id int8 not null,
        version int8,
        amountChange numeric(19, 2),
        percentChange int4 not null,
        affectingBudget_id int8,
        affectingBudgetItem_id int8,
        fromScenario_id int8,
        primary key (id)
    );

    create table BudgetScenarioRule (
        id int8 not null,
        version int8,
        amountChange numeric(19, 2),
        percentChange int4 not null,
        forScenario_id int8,
        forType_id int8,
        primary key (id)
    );

    create table BudgetScenario_BudgetScenarioApplication (
        BudgetScenario_id int8 not null,
        affecting_id int8 not null,
        unique (affecting_id)
    );

    create table BudgetScenario_BudgetScenarioRule (
        BudgetScenario_id int8 not null,
        affectedBy_id int8 not null,
        unique (affectedBy_id)
    );

    create table BudgetStatus (
        id int8 not null,
        version int8,
        forBudget_id int8,
        type_id int8,
        primary key (id)
    );

    create table BudgetStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table BudgetType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Budget_BudgetItem (
        Budget_id int8 not null,
        composedOf_id int8 not null,
        unique (composedOf_id)
    );

    create table Budget_BudgetReview (
        Budget_id int8 not null,
        reviews_id int8 not null,
        unique (reviews_id)
    );

    create table Budget_BudgetRevision (
        Budget_id int8 not null,
        revisedBy_id int8 not null,
        unique (revisedBy_id)
    );

    create table Budget_BudgetRole (
        Budget_id int8 not null,
        involving_id int8 not null,
        unique (involving_id)
    );

    create table Budget_BudgetStatus (
        Budget_id int8 not null,
        describedBy_id int8 not null,
        unique (describedBy_id)
    );

    create table CaseRole (
        id int8 not null,
        version int8,
        describedBy_id int8,
        ofParty int8,
        roleFor_id int8,
        primary key (id)
    );

    create table CaseRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table CaseStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table CommunicationEvent (
        id int8 not null,
        version int8,
        dateTimeEnded timestamp,
        dateTimeStarted timestamp,
        note text,
        inTheContextOf_id int8,
        monitoredBy_id int8,
        occursVia_id int8,
        primary key (id)
    );

    create table CommunicationEventPurpose (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        type bytea,
        primary key (id)
    );

    create table CommunicationEventPurposeType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table CommunicationEventRole (
        id int8 not null,
        version int8,
        describedBy_id int8,
        forParty_id int8,
        communicationEventOf int8,
        type_id int8,
        primary key (id)
    );

    create table CommunicationEventRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table CommunicationEventStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table CommunicationEventWorkEffort (
        id int8 not null,
        version int8,
        description text,
        eventFrom_id int8,
        primary key (id)
    );

    create table CommunicationEvent_CommunicationEventPurpose (
        CommunicationEvent_id int8 not null,
        categorizedBy_id int8 not null,
        unique (categorizedBy_id)
    );

    create table CommunicationEvent_Kase (
        encompassing_id int8 not null,
        asPartOf_id int8 not null
    );

    create table ContactMechanism (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        address text,
        directions text,
        acceptsData bool,
        acceptsFaxes bool,
        acceptsTextMessages bool,
        areaCode varchar(255),
        contactNumber varchar(255),
        countryCode varchar(255),
        extension varchar(255),
        primary key (id)
    );

    create table ContactMechanismPurposeType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table ContactMechanism_PartyPostalAddress (
        ContactMechanism_id int8 not null,
        locationFor_id int8 not null,
        unique (locationFor_id)
    );

    create table Container (
        id int8 not null,
        version int8,
        locatedAt bytea,
        describedBy_id int8,
        primary key (id)
    );

    create table ContainerType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table CostComponentType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Deduction (
        id int8 not null,
        version int8,
        amount numeric(19, 2),
        reductionOf bytea,
        type_id int8,
        primary key (id)
    );

    create table DeductionType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Deliverable (
        id int8 not null,
        version int8,
        description text,
        name varchar(255),
        type_id int8,
        primary key (id)
    );

    create table DeliverableType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Deliverable_Requirement (
        Deliverable_id int8 not null,
        producedBy_id int8 not null,
        unique (producedBy_id)
    );

    create table DepreciationMethod (
        id int8 not null,
        version int8,
        description varchar(255),
        formula varchar(255),
        primary key (id)
    );

    create table DesiredFeature (
        id int8 not null,
        version int8,
        optional bool not null,
        describedBy_id int8,
        primary key (id)
    );

    create table Document (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        forItem_id int8,
        forPackage_id int8,
        forShipment_id int8,
        primary key (id)
    );

    create table EmploymentApplication (
        id int8 not null,
        version int8,
        applicationDate timestamp,
        fromPerson bytea,
        referredBy bytea,
        forPosition_id int8,
        source_id int8,
        status_id int8,
        primary key (id)
    );

    create table EmploymentApplicationStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table EmploymnetApplicationSourceType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table EstimatedProductCost (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        cost numeric(19, 2),
        calculatedForFeature_id int8,
        calculatedForProduct_id int8,
        categorizedBy_id int8,
        specifiedForGeographicBoundary_id int8,
        specifiedForOrganization_id int8,
        primary key (id)
    );

    create table Facility (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        description varchar(255),
        partOf_id int8,
        primary key (id)
    );

    create table FacilityContactMechanism (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        mechansimToContact_id int8,
        specifiedVia_id int8,
        primary key (id)
    );

    create table FacilityRole (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        describedBy_id int8,
        forParty_id int8,
        ofFacility int8,
        primary key (id)
    );

    create table FacilityRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Facility_Facility (
        Facility_id int8 not null,
        madeUpOf_id int8 not null,
        unique (madeUpOf_id)
    );

    create table Facility_FacilityContactMechanism (
        Facility_id int8 not null,
        contactedVia_id int8 not null,
        unique (contactedVia_id)
    );

    create table Facility_FacilityRole (
        Facility_id int8 not null,
        involving_id int8 not null,
        unique (involving_id)
    );

    create table FinancialAccount (
        id int8 not null,
        version int8,
        name varchar(255),
        type_id int8,
        primary key (id)
    );

    create table FinancialAccountRole (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        accountFor bytea,
        type_id int8,
        primary key (id)
    );

    create table FinancialAccountRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table FinancialAccountTransaction (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        entryDate timestamp,
        executedBy bytea,
        transactionDate timestamp,
        affecting_id int8,
        causedBy_id int8,
        primary key (id)
    );

    create table FinancialAccountType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table FinancialAccount_FinancialAccountRole (
        FinancialAccount_id int8 not null,
        ownedBy_id int8 not null,
        unique (ownedBy_id)
    );

    create table FinancialAccount_FinancialAccountTransaction (
        FinancialAccount_id int8 not null,
        transactions_id int8 not null,
        unique (transactions_id)
    );

    create table FixedAsset (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        dateAcquired timestamp,
        dateLastServiced timestamp,
        description varchar(255),
        name varchar(255),
        nextService timestamp,
        productionCapacity int4 not null,
        modelNumber varchar(255),
        serialNumber varchar(255),
        vehicleIdentificationNumber varchar(255),
        address bytea,
        primary key (id)
    );

    create table FixedAssetDepreciationMethod (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        depreciationMethod_id int8,
        primary key (id)
    );

    create table FixedAsset_FixedAssetDepreciationMethod (
        FixedAsset_id int8 not null,
        depreciatedVia_id int8 not null,
        unique (depreciatedVia_id)
    );

    create table GeneralLedgerAccount (
        id int8 not null,
        version int8,
        description varchar(255),
        name varchar(255),
        primary key (id)
    );

    create table GeneralLedgerAccount_GlBudgetXref (
        GeneralLedgerAccount_id int8 not null,
        budgetLineItems_id int8 not null,
        unique (budgetLineItems_id)
    );

    create table GeneralLedgerAccount_OrganizationGlAccount (
        GeneralLedgerAccount_id int8 not null,
        associatedWith_id int8 not null,
        unique (associatedWith_id)
    );

    create table GeographicBoundary (
        id int8 not null,
        abbreviation varchar(255),
        code varchar(255),
        name varchar(255),
        version int8,
        type_id int8,
        primary key (id)
    );

    create table GeographicBoundaryType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table GeographicBoundary_ContactMechanism (
        within_id int8 not null,
        boundaryFor_id int8 not null
    );

    create table GeographicBoundary_GeographicBoundary (
        GeographicBoundary_id int8 not null,
        within_id int8 not null,
        contains_id int8 not null,
        unique (within_id),
        unique (contains_id)
    );

    create table GeographicBoundary_ReorderGuideline (
        GeographicBoundary_id int8 not null,
        reorderGuideline_id int8 not null,
        unique (reorderGuideline_id)
    );

    create table GeographicBoundary_SalesTaxLookup (
        GeographicBoundary_id int8 not null,
        salesTaxLookup_id int8 not null,
        unique (salesTaxLookup_id)
    );

    create table GlBudgetXref (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        allocationPercentage int4 not null,
        mappedToBudgetItemType_id int8,
        mappedToGlAccount_id int8,
        primary key (id)
    );

    create table GoodIdentification (
        id int8 not null,
        version int8,
        idValue varchar(255) not null unique,
        definedAs_id int8,
        identifierFor_id int8,
        primary key (id)
    );

    create table IdentificationType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table IdentificationType_GoodIdentification (
        IdentificationType_id int8 not null,
        usedToDefine_id int8 not null,
        unique (usedToDefine_id)
    );

    create table InventoryItem (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        serialNumber varchar(255),
        inTheStateOf_id int8,
        locatedAt_id int8,
        locatedWithin_id int8,
        partOf_id int8,
        physicalOccurenceOf_id int8,
        primary key (id)
    );

    create table InventoryItemStatusType (
        id int8 not null,
        version int8,
        primary key (id)
    );

    create table InventoryItemVariance (
        id int8 not null,
        version int8,
        comment text,
        physicalInventoryDate date,
        quantity int8 not null,
        adjustmentFor_id int8,
        explainedWith_id int8,
        primary key (id)
    );

    create table InvociceStatus (
        id int8 not null,
        version int8,
        statusDate timestamp,
        statusFor_id int8,
        type_id int8,
        primary key (id)
    );

    create table Invoice (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        addressedTo bytea,
        billedFrom bytea,
        billedToParty bytea,
        description text,
        invoiceDate timestamp,
        message text,
        sentFrom bytea,
        billedToAccount_id int8,
        primary key (id)
    );

    create table InvoiceItem (
        id int8 not null,
        version int8,
        amount numeric(19, 2),
        description text,
        quantity int4 not null,
        sequence int4 not null,
        taxable bool not null,
        chargeForItem_id int8,
        chargeForProduct_id int8,
        chargeforFeature_id int8,
        type_id int8,
        primary key (id)
    );

    create table InvoiceItemType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table InvoiceItem_InvoiceItem (
        InvoiceItem_id int8 not null,
        soldWith_id int8 not null,
        adjustments_id int8 not null,
        unique (soldWith_id),
        unique (adjustments_id)
    );

    create table InvoiceItem_InvoiceTerm (
        InvoiceItem_id int8 not null,
        terms_id int8 not null,
        unique (terms_id)
    );

    create table InvoiceItem_OrderItemBilling (
        InvoiceItem_id int8 not null,
        billingForOrderItem_id int8 not null,
        unique (billingForOrderItem_id)
    );

    create table InvoiceItem_ShipmentItem (
        InvoiceItem_id int8 not null,
        billingForShipmentItem_id int8 not null,
        unique (billingForShipmentItem_id)
    );

    create table InvoiceItem_TimeEntry (
        InvoiceItem_id int8 not null,
        billingForTimeEntry_id int8 not null,
        unique (billingForTimeEntry_id)
    );

    create table InvoiceItem_WorkEffortBilling (
        InvoiceItem_id int8 not null,
        billingForWorkEffort_id int8 not null,
        unique (billingForWorkEffort_id)
    );

    create table InvoiceRole (
        id int8 not null,
        version int8,
        percentage int4 not null,
        performedOn timestamp,
        primary key (id)
    );

    create table InvoiceStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table InvoiceTerm (
        id int8 not null,
        version int8,
        termValue int4 not null,
        conditionForInvoice_id int8,
        conditionForInvoiceItem_id int8,
        type_id int8,
        primary key (id)
    );

    create table InvoiceTermType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Invoice_InvoiceItem (
        Invoice_id int8 not null,
        composedOf_id int8 not null,
        unique (composedOf_id)
    );

    create table Invoice_InvoiceRole (
        Invoice_id int8 not null,
        involving_id int8 not null,
        unique (involving_id)
    );

    create table Invoice_InvoiceTerm (
        Invoice_id int8 not null,
        terms_id int8 not null,
        unique (terms_id)
    );

    create table ItemIssuance (
        id int8 not null,
        version int8,
        issuedOn date,
        quantity int4 not null,
        issuedAccordingTo_id int8,
        issuedFor_id int8,
        issuedFrom_id int8,
        primary key (id)
    );

    create table ItemIssuanceRole (
        id int8 not null,
        version int8,
        roleFor_id int8,
        type_id int8,
        primary key (id)
    );

    create table ItemIssuanceRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Kase (
        id int8 not null,
        version int8,
        description text,
        start timestamp,
        inTheStateOf_id int8,
        primary key (id)
    );

    create table Lot (
        id int8 not null,
        version int8,
        creationDate date,
        expirationDate date,
        quantity int8 not null,
        primary key (id)
    );

    create table MarketInterest (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        interestFor_id int8,
        productCategoryOf int8,
        primary key (id)
    );

    create table OrderAdjustment (
        id int8 not null,
        version int8,
        amount numeric(19, 2),
        percentage int4 not null,
        type bytea,
        affectingItem_id int8,
        affectingOrder_id int8,
        primary key (id)
    );

    create table OrderAdjustmentType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table OrderContactMechanism (
        id int8 not null,
        version int8,
        contactMechanism_id int8,
        usedFor_id int8,
        primary key (id)
    );

    create table OrderItem (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        comment varchar(255),
        estimatedDeliveryDate date,
        itemDescription text,
        orderItemSeqId int8 not null,
        quantity int4 not null,
        shippingInstructions text,
        unitPrice numeric(19, 2),
        forFeature_id int8,
        forProduct_id int8,
        orderedWith_id int8,
        shipToCustomer_id int8,
        shippedToMechanism_id int8,
        designatedShipTo_id int8,
        shipToMechanism_id int8,
        primary key (id)
    );

    create table OrderItemBilling (
        id int8 not null,
        version int8,
        amount numeric(19, 2),
        quantity int4 not null,
        billingFor_id int8,
        quantityOf_id int8,
        primary key (id)
    );

    create table OrderItemContactMechanism (
        id int8 not null,
        version int8,
        mechanism_id int8,
        type_id int8,
        primary key (id)
    );

    create table OrderItemRole (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        assignedTo_id int8,
        type_id int8,
        primary key (id)
    );

    create table OrderItemRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table OrderItem_OrderItem (
        associatedWith_id int8 not null,
        usedToFillfill_id int8 not null
    );

    create table OrderItem_OrderItemContactMechanism (
        OrderItem_id int8 not null,
        having_id int8 not null,
        unique (having_id)
    );

    create table OrderItem_OrderItemRole (
        OrderItem_id int8 not null,
        involving_id int8 not null,
        unique (involving_id)
    );

    create table OrderRequirementCommitment (
        id int8 not null,
        version int8,
        quantity int4 not null,
        usageOf_id int8,
        primary key (id)
    );

    create table OrderRole (
        id int8 not null,
        version int8,
        involving_id int8,
        partOf_id int8,
        type_id int8,
        primary key (id)
    );

    create table OrderRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table OrderShipment (
        id int8 not null,
        version int8,
        quantity int4 not null,
        shipmentOf_id int8,
        shippedVia_id int8,
        primary key (id)
    );

    create table OrderStatus (
        id int8 not null,
        version int8,
        statusOn timestamp,
        describedBy_id int8,
        statusForItem_id int8,
        statusForOrder_id int8,
        primary key (id)
    );

    create table OrderStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table OrderTerm (
        id int8 not null,
        version int8,
        value numeric(19, 2),
        conditionForItem_id int8,
        conditionForOrder_id int8,
        describedBy_id int8,
        primary key (id)
    );

    create table OrderTermType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table OrderValue (
        id int8 not null,
        version int8,
        fromAmount numeric(19, 2),
        thruAmount numeric(19, 2),
        primary key (id)
    );

    create table Orders (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        entryDate date,
        orderDate date,
        billTo_id int8,
        designatedToBeBilledTo_id int8,
        placedBy_id int8,
        placedUsingMechanism_id int8,
        takenBy_id int8,
        takenVia_id int8,
        billedTo_id int8,
        placedUsing_id int8,
        requestedBillTo_id int8,
        primary key (id)
    );

    create table Orders_OrderAdjustment (
        Orders_id int8 not null,
        affectedBy_id int8 not null,
        unique (affectedBy_id)
    );

    create table Orders_OrderContactMechanism (
        Orders_id int8 not null,
        contactMechanisms_id int8 not null,
        unique (contactMechanisms_id)
    );

    create table Orders_OrderItem (
        Orders_id int8 not null,
        composedOf_id int8 not null,
        unique (composedOf_id)
    );

    create table Orders_OrderRole (
        Orders_id int8 not null,
        involving_id int8 not null,
        unique (involving_id)
    );

    create table Orders_OrderStatus (
        Orders_id int8 not null,
        stateOf_id int8 not null,
        unique (stateOf_id)
    );

    create table Orders_OrderTerm (
        Orders_id int8 not null,
        subjectTo_id int8 not null,
        unique (subjectTo_id)
    );

    create table OrganizationGlAccount (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        internalOrganizationFor bytea,
        referencingBillToCustomer bytea,
        referencingProduct bytea,
        referencingProductCategory bytea,
        referencingSupplier bytea,
        accountFor_id int8,
        subsidiaryOf_id int8,
        primary key (id)
    );

    create table OrganizationGlAccount_TransactionDetail (
        OrganizationGlAccount_id int8 not null,
        consistingOf_id int8 not null,
        unique (consistingOf_id)
    );

    create table PackagingContent (
        id int8 not null,
        version int8,
        quantity int4 not null,
        item_id int8,
        primary key (id)
    );

    create table Party (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        name varchar(255),
        firstName varchar(255),
        lastName varchar(255),
        middleName varchar(255),
        primary key (id)
    );

    create table PartyBenefit (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        actualEmployerPaidPercent int4 not null,
        availableTime int4 not null,
        cost numeric(19, 2),
        period bytea,
        benefitFor_id int8,
        type_id int8,
        primary key (id)
    );

    create table PartyClassification (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        classificationFor_id int8,
        primary key (id)
    );

    create table PartyContactMechanism (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment text,
        solicitable bool not null,
        mechanismToContact_id int8,
        specifiedFor_id int8,
        specifiedVia_id int8,
        primary key (id)
    );

    create table PartyContactMechanismPurpose (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        definedVia_id int8,
        usedWithin_id int8,
        primary key (id)
    );

    create table PartyPostalAddress (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment text,
        locatedAt_id int8,
        specifiedFor_id int8,
        primary key (id)
    );

    create table PartyQualification (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        heldBy bytea,
        type_id int8,
        primary key (id)
    );

    create table PartyRate (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        rate numeric(19, 2),
        rateFor_id int8,
        rateType_id int8,
        primary key (id)
    );

    create table PartyRelationship (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment varchar(255),
        relationshipFrom bytea,
        relationshipTo bytea,
        priority_id int8,
        relationshipFrom_id int8 not null,
        relationshipTo_id int8 not null,
        status_id int8,
        type_id int8 not null,
        dueTo_id int8,
        primary key (id)
    );

    create table PartyRole (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        roleFor_id int8,
        type_id int8,
        primary key (id)
    );

    create table PartyRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table PartyRole_ShipmentMethodType (
        transportationUsed_id int8 not null,
        ableToShipVia_id int8 not null
    );

    create table PartySkill (
        id int8 not null,
        version int8,
        heldBy bytea,
        skillLevel int4 not null,
        startedUsing timestamp,
        yearsOfExperience int4 not null,
        type_id int8,
        primary key (id)
    );

    create table PayGrade (
        id int8 not null,
        version int8,
        comment varchar(255),
        name varchar(255),
        primary key (id)
    );

    create table PayGrade_SalaryStep (
        PayGrade_id int8 not null,
        steps_id int8 not null,
        unique (steps_id)
    );

    create table PayHistory (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        amount numeric(19, 2),
        comment varchar(255),
        forPeriodType bytea,
        recordFor_id int8,
        step_id int8,
        primary key (id)
    );

    create table Payment (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        amount numeric(19, 2),
        comment varchar(255),
        effectiveDate timestamp,
        paymentRefNum varchar(255),
        postedVia bytea,
        issuedFrom bytea,
        issuedTo bytea,
        paidVia_id int8,
        depositedVia_id int8,
        affecting_id int8,
        primary key (id)
    );

    create table PaymentApplication (
        id int8 not null,
        version int8,
        amountApplied numeric(19, 2),
        appliedToAccount_id int8,
        appliedToItem_id int8,
        primary key (id)
    );

    create table PaymentBudgetAllocation (
        id int8 not null,
        version int8,
        allocationOf bytea,
        amount numeric(19, 2),
        usageOf_id int8,
        primary key (id)
    );

    create table PaymentMethodType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Payment_Deduction (
        Payment_id int8 not null,
        deductions_id int8 not null,
        unique (deductions_id)
    );

    create table Payment_PaymentApplication (
        Payment_id int8 not null,
        usedToPay_id int8 not null,
        unique (usedToPay_id)
    );

    create table Payment_PaymentBudgetAllocation (
        Payment_id int8 not null,
        bookedAgainst_id int8 not null,
        unique (bookedAgainst_id)
    );

    create table PayrollPreference (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        accountNumber varchar(255),
        bankName varchar(255),
        flatAmount numeric(19, 2),
        forEmployee bytea,
        forInternalOrganization bytea,
        paymentMethodType bytea,
        percentage int4 not null,
        period bytea,
        routingNumber varchar(255),
        type_id int8,
        primary key (id)
    );

    create table PerformanceNote (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment varchar(255),
        communicationDate timestamp,
        forEmployee bytea,
        fromManger bytea,
        type_id int8,
        primary key (id)
    );

    create table PerformanceNoteType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table PerformanceRatingType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table PerformanceReview (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        bonus bytea,
        comments varchar(255),
        forEmployee bytea,
        fromManager bytea,
        affecting_id int8,
        newPosition_id int8,
        primary key (id)
    );

    create table PerformanceReviewItem (
        id int8 not null,
        version int8,
        comment varchar(255),
        partOf_id int8,
        scored_id int8,
        type_id int8,
        primary key (id)
    );

    create table PerformanceReviewItemType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table PerformanceReview_PerformanceReviewItem (
        PerformanceReview_id int8 not null,
        items_id int8 not null,
        unique (items_id)
    );

    create table PeriodType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table PersonTraining (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        receivedBy bytea,
        type_id int8,
        primary key (id)
    );

    create table PickList (
        id int8 not null,
        version int8,
        createdOn timestamp,
        primary key (id)
    );

    create table PickList_PicklistItem (
        PickList_id int8 not null,
        items_id int8 not null,
        unique (items_id)
    );

    create table PicklistItem (
        id int8 not null,
        version int8,
        quantity int4 not null,
        partOf_id int8,
        pickedFrom_id int8,
        primary key (id)
    );

    create table PicklistItem_ItemIssuance (
        PicklistItem_id int8 not null,
        issueList_id int8 not null,
        unique (issueList_id)
    );

    create table Position (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        approvedThru bytea,
        estimatedFromDate date,
        estimatedThruDate date,
        exempt bool not null,
        fulltime bool not null,
        salary bool not null,
        isATemp bool,
        within bytea,
        status_id int8,
        type_id int8,
        primary key (id)
    );

    create table PositionClassificationType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table PositionFulfillment (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        acceptedBy bytea,
        comment varchar(255),
        fullfillmentOf_id int8,
        primary key (id)
    );

    create table PositionReportingStructure (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment varchar(255),
        isPrimary bool,
        manager_id int8,
        subordinate_id int8,
        primary key (id)
    );

    create table PositionResponsibility (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment varchar(255),
        associatedWith_id int8,
        type_id int8,
        primary key (id)
    );

    create table PositionStatus (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        type_id int8,
        primary key (id)
    );

    create table PositionStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table PositionType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        benefitPercent int4 not null,
        title varchar(255),
        union_id int8,
        primary key (id)
    );

    create table PositionTypeClass (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        standardHoursePerWeek int4 not null,
        forPositionType_id int8,
        type_id int8,
        primary key (id)
    );

    create table PositionTypeRate (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        forPeriodType bytea,
        rate numeric(19, 2),
        associatedWith_id int8,
        forPositionType_id int8,
        forRateType_id int8,
        primary key (id)
    );

    create table PositionType_PositionTypeClass (
        PositionType_id int8 not null,
        typeClasses_id int8 not null,
        unique (typeClasses_id)
    );

    create table PositionType_PositionTypeRate (
        PositionType_id int8 not null,
        rates_id int8 not null,
        unique (rates_id)
    );

    create table PositionType_ValidResponsibility (
        PositionType_id int8 not null,
        validResponsibilities_id int8 not null,
        unique (validResponsibilities_id)
    );

    create table Position_PositionFulfillment (
        Position_id int8 not null,
        filledBy_id int8 not null,
        unique (filledBy_id)
    );

    create table Position_PositionResponsibility (
        Position_id int8 not null,
        assigendTo_id int8 not null,
        unique (assigendTo_id)
    );

    create table PreferenceType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table PriceComponent (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment varchar(255),
        percent int4 not null,
        price numeric(19, 2),
        basedOnGeographicBoundary_id int8,
        basedOnOrderValue_id int8,
        basedOnPartyType_id int8,
        basedOnProductCategory_id int8,
        basedOnQuantityBreak_id int8,
        basedOnSaleType_id int8,
        priceDefinedForProduct_id int8,
        priceDefinedForProductFeature_id int8,
        specifiedFor_id int8,
        perTimeFrequencyMeasure int8,
        inTheCurrencyOf_id int8,
        primary key (id)
    );

    create table PriorityType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Product (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        comment text,
        introductionDate date,
        name varchar(255) not null unique,
        salesDiscontinuationDate date,
        supportDiscontinuationDate date,
        measuredUsing_id int8,
        primary key (id)
    );

    create table ProductCategory (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        description varchar(255) not null unique,
        partOf_id int8,
        primary key (id)
    );

    create table ProductCategoryClassification (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment text,
        primaryProductCategoryClassification bool,
        categoryFor_id int8,
        definedBy_id int8,
        primary key (id)
    );

    create table ProductComplement (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        AUseOf bytea,
        complementFor bytea,
        reason varchar(255),
        primary key (id)
    );

    create table ProductComponent (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment text,
        instruction text,
        quantityUsed int8 not null,
        productComponentIn int8,
        productFor_id int8,
        primary key (id)
    );

    create table ProductFeature (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        description varchar(255) not null unique,
        measuredUsing bytea,
        categorizedBy_id int8,
        primary key (id)
    );

    create table ProductFeatureApplicability (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        availableWith bytea,
        usedToDefine bytea,
        primary key (id)
    );

    create table ProductFeatureCategory (
        id int8 not null,
        version int8,
        description text,
        name varchar(255),
        primary key (id),
        unique (name)
    );

    create table ProductFeatureCategory_ProductFeature (
        ProductFeatureCategory_id int8 not null,
        categoryFor_id int8 not null,
        unique (categoryFor_id)
    );

    create table ProductFeatureInteraction (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        AFactorIn_id int8,
        applicableWithinTheContextOf_id int8,
        productFeatureOf int8,
        primary key (id)
    );

    create table ProductFeature_ProductFeatureApplicability (
        ProductFeature_id int8 not null,
        usedToDefine_id int8 not null,
        unique (usedToDefine_id)
    );

    create table ProductFeature_ProductFeatureInteraction (
        ProductFeature_id int8 not null,
        dependentOnSelectionOf_id int8 not null,
        unique (dependentOnSelectionOf_id)
    );

    create table ProductIncompatibility (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        AUseOf bytea,
        productFor bytea,
        reason varchar(255),
        primary key (id)
    );

    create table ProductObsolescence (
        id int8 not null,
        version int8,
        reason text,
        supercessionDate date,
        AUseOf_id int8,
        obsolescenceFor_id int8,
        primary key (id)
    );

    create table ProductSubstitute (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment text,
        quantity int8 not null,
        AUseOf_id int8,
        substituteFor_id int8,
        primary key (id)
    );

    create table Product_ProductComplement (
        Product_id int8 not null,
        complimentedWith_id int8 not null,
        complimentFor_id int8 not null,
        unique (complimentFor_id),
        unique (complimentedWith_id)
    );

    create table Product_ProductFeatureInteraction (
        Product_id int8 not null,
        usedToDefine_id int8 not null,
        unique (usedToDefine_id)
    );

    create table Product_ProductIncompatibility (
        Product_id int8 not null,
        incompatibleWith_id int8 not null,
        unique (incompatibleWith_id)
    );

    create table Product_ProductObsolescence (
        Product_id int8 not null,
        AReplacement_id int8 not null,
        unique (AReplacement_id)
    );

    create table Product_ProductSubstitute (
        Product_id int8 not null,
        usedAs_id int8 not null,
        unique (usedAs_id)
    );

    create table QualificationType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table QuantityBreak (
        id int8 not null,
        version int8,
        fromQuantity int4 not null,
        thruQuantity int4 not null,
        primary key (id)
    );

    create table QuantityBreak_PriceComponent (
        QuantityBreak_id int8 not null,
        discountLevelDefinedFor_id int8 not null,
        unique (discountLevelDefinedFor_id)
    );

    create table Quote (
        id int8 not null,
        version int8,
        description text,
        issueDate date,
        validFrom date,
        validThru date,
        givenTo_id int8,
        issuedBy_id int8,
        primary key (id)
    );

    create table QuoteItem (
        id int8 not null,
        version int8,
        comment text,
        estimatedDeliveryDate date,
        quantity int4 not null,
        sequenceId int4 not null,
        unitPrice numeric(19, 2),
        partOf_id int8,
        product_id int8,
        responseTo_id int8,
        primary key (id)
    );

    create table QuoteItem_OrderItem (
        QuoteItem_id int8 not null,
        orderItems_id int8 not null,
        unique (orderItems_id)
    );

    create table QuoteItem_QuoteTerm (
        QuoteItem_id int8 not null,
        terms_id int8 not null,
        unique (terms_id)
    );

    create table QuoteRole (
        id int8 not null,
        version int8,
        party_id int8,
        type_id int8,
        primary key (id)
    );

    create table QuoteRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table QuoteTerm (
        id int8 not null,
        version int8,
        conditionForItem bytea,
        conditionForQuote bytea,
        termType bytea,
        termValue numeric(19, 2),
        primary key (id)
    );

    create table Quote_QuoteItem (
        Quote_id int8 not null,
        items_id int8 not null,
        unique (items_id)
    );

    create table Quote_QuoteRole (
        Quote_id int8 not null,
        roles_id int8 not null,
        unique (roles_id)
    );

    create table Quote_QuoteTerm (
        Quote_id int8 not null,
        terms_id int8 not null,
        unique (terms_id)
    );

    create table RateType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table RatingType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Reason (
        id int8 not null,
        version int8,
        description text,
        primary key (id)
    );

    create table Reason_InventoryItemVariance (
        Reason_id int8 not null,
        explanationFor_id int8 not null,
        unique (explanationFor_id)
    );

    create table RejectionReason (
        id int8 not null,
        version int8,
        description text,
        primary key (id)
    );

    create table RelationshipType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        fromRoleType_id int8 not null,
        toRoleType_id int8 not null,
        primary key (id)
    );

    create table ReorderGuideline (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        reorderLevel int8 not null,
        reorderQuantity int8 not null,
        basedOnFacility_id int8,
        basedOnGeographicBoundary_id int8,
        basedOnInternalOrganization_id int8,
        guidelineFor_id int8,
        primary key (id)
    );

    create table Request (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        description text,
        requestDate date,
        responseRequired date,
        primary key (id)
    );

    create table RequestItem (
        id int8 not null,
        version int8,
        description text,
        maximumAmount numeric(19, 2),
        quantity int4 not null,
        requiredBy date,
        partOf_id int8,
        primary key (id)
    );

    create table RequestItem_RequirementRequest (
        RequestItem_id int8 not null,
        communicationMethod_id int8 not null,
        unique (communicationMethod_id)
    );

    create table RequestRole (
        id int8 not null,
        version int8,
        party_id int8,
        roleType_id int8,
        primary key (id)
    );

    create table RequestRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Request_RequestItem (
        Request_id int8 not null,
        items_id int8 not null,
        unique (items_id)
    );

    create table Request_RequestRole (
        Request_id int8 not null,
        roles_id int8 not null,
        unique (roles_id)
    );

    create table Request_RespondingParty (
        Request_id int8 not null,
        respondingParties_id int8 not null,
        unique (respondingParties_id)
    );

    create table Requirement (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        creationDate date,
        description text,
        estimatedBudget numeric(19, 2),
        quantity int4 not null,
        reason text,
        requiredBy timestamp,
        neededAt_id int8,
        requesting_id int8,
        producedBy_id int8,
        toProduce_id int8,
        primary key (id)
    );

    create table RequirementBudgetAllocation (
        id int8 not null,
        version int8,
        allocatedTo bytea,
        allocationOf bytea,
        amount numeric(19, 2),
        primary key (id)
    );

    create table RequirementRequest (
        id int8 not null,
        version int8,
        associatedTo_id int8,
        communicatedVia_id int8,
        primary key (id)
    );

    create table RequirementRole (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        assignedTo_id int8,
        relatedTo_id int8,
        type_id int8,
        primary key (id)
    );

    create table RequirementRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table RequirementStatus (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        type_id int8,
        primary key (id)
    );

    create table RequirementStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Requirement_DesiredFeature (
        Requirement_id int8 not null,
        specifying_id int8 not null,
        unique (specifying_id)
    );

    create table Requirement_OrderRequirementCommitment (
        Requirement_id int8 not null,
        commitmentOf_id int8 not null,
        unique (commitmentOf_id)
    );

    create table Requirement_Requirement (
        Requirement_id int8 not null,
        subRequirements_id int8 not null,
        unique (subRequirements_id)
    );

    create table Requirement_RequirementBudgetAllocation (
        Requirement_id int8 not null,
        allocatedVia_id int8 not null,
        unique (allocatedVia_id)
    );

    create table Requirement_RequirementStatus (
        Requirement_id int8 not null,
        status_id int8 not null,
        unique (status_id)
    );

    create table RespondingParty (
        id int8 not null,
        version int8,
        dateSent date,
        contactMechanism_id int8,
        party_id int8,
        primary key (id)
    );

    create table ResponsibilityType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table ResponsibilityType_ValidResponsibility (
        ResponsibilityType_id int8 not null,
        usedToDefine_id int8 not null,
        unique (usedToDefine_id)
    );

    create table Resume (
        id int8 not null,
        version int8,
        dateReceived timestamp,
        text varchar(255),
        primary key (id)
    );

    create table SalaryStep (
        id int8 not null,
        version int8,
        amount numeric(19, 2),
        dateModified timestamp,
        sequence int4 not null,
        grade_id int8,
        primary key (id)
    );

    create table SalaryStep_PayHistory (
        SalaryStep_id int8 not null,
        history_id int8 not null,
        unique (history_id)
    );

    create table SalaryStep_PositionTypeRate (
        SalaryStep_id int8 not null,
        positionTypeRates_id int8 not null,
        unique (positionTypeRates_id)
    );

    create table SaleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table SalesTaxLookup (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        salesTaxPercentage numeric(19, 2),
        salesTaxLookupFor_id int8,
        specifiedFor_id int8,
        primary key (id)
    );

    create table Shipment (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        actualShipCost numeric(19, 2),
        estimatedArrivalDate date,
        estimatedReadyDate date,
        estimatedShipCost numeric(19, 2),
        estimatedShipDate date,
        handlingInstructions text,
        lastUpdated date,
        latestCancelDate date,
        inquiredAboutVia_id int8,
        shippedFromContactMechanism_id int8,
        shippedFromParty_id int8,
        shippedToContactMechanism_id int8,
        shippedToParty_id int8,
        primary key (id)
    );

    create table ShipmentItem (
        id int8 not null,
        version int8,
        contentsDescription text,
        quantity int4 not null,
        sequenceNumber int4 not null,
        shipmentOf_id int8,
        primary key (id)
    );

    create table ShipmentItem_OrderShipment (
        ShipmentItem_id int8 not null,
        shipmentsOf_id int8 not null,
        unique (shipmentsOf_id)
    );

    create table ShipmentItem_ProductFeature (
        ShipmentItem_id int8 not null,
        shippedWith_id int8 not null,
        unique (shippedWith_id)
    );

    create table ShipmentItem_ShipmentItem (
        ShipmentItem_id int8 not null,
        shipmentItems_id int8 not null,
        unique (shipmentItems_id)
    );

    create table ShipmentMethodType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table ShipmentPackage (
        id int8 not null,
        version int8,
        primary key (id)
    );

    create table ShipmentPackage_PackagingContent (
        ShipmentPackage_id int8 not null,
        composedOf_id int8 not null,
        unique (composedOf_id)
    );

    create table ShipmentPackage_ShipmentReceipt (
        ShipmentPackage_id int8 not null,
        consistingOf_id int8 not null,
        unique (consistingOf_id)
    );

    create table ShipmentReceipt (
        id int8 not null,
        version int8,
        itemDescription text,
        quantityAccepted int4 not null,
        quantityRejected int4 not null,
        received timestamp,
        good_id int8,
        inventoryItem_id int8,
        orderItem_id int8,
        rejectionReason_id int8,
        shipmentPackage_id int8,
        primary key (id)
    );

    create table ShipmentReceiptRole (
        id int8 not null,
        version int8,
        party_id int8,
        type_id int8,
        primary key (id)
    );

    create table ShipmentReceiptRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table ShipmentReceipt_ShipmentReceiptRole (
        ShipmentReceipt_id int8 not null,
        roles_id int8 not null,
        unique (roles_id)
    );

    create table ShipmentRouteSegment (
        id int8 not null,
        version int8,
        actualArrival timestamp,
        actualStart timestamp,
        endMileage int8 not null,
        estimatedArrival timestamp,
        estimatedStart timestamp,
        fuelUsed numeric(19, 2),
        startMileage int8 not null,
        shipmentOf_id int8,
        shippedFrom_id int8,
        shippedTo_id int8,
        shippedVia_id int8,
        shipppedBy_id int8,
        primary key (id)
    );

    create table ShipmentStatus (
        id int8 not null,
        version int8,
        statusDate timestamp,
        type_id int8,
        primary key (id)
    );

    create table ShipmentStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Shipment_ShipmentItem (
        Shipment_id int8 not null,
        items_id int8 not null,
        unique (items_id)
    );

    create table Shipment_ShipmentStatus (
        Shipment_id int8 not null,
        statuses_id int8 not null,
        unique (statuses_id)
    );

    create table SkillType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table StandardTimePeriod (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        type_id int8,
        primary key (id)
    );

    create table StatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table SupplierProduct (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment varchar(255),
        standardLeadTime int8 not null,
        furtherDescribedBy_id int8,
        ratedBy_id int8,
        suppliedBy_id int8,
        validSupplierFor_id int8,
        primary key (id)
    );

    create table TermType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table TerminationReason (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table TerminationType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table TimeEntry (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment text,
        timeSpendOn_id int8,
        primary key (id)
    );

    create table TimeSheetRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table Timesheet (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        hoursFor_id int8,
        primary key (id)
    );

    create table TimesheetRole (
        id int8 not null,
        version int8,
        involving_id int8,
        type_id int8,
        primary key (id)
    );

    create table Timesheet_TimeEntry (
        Timesheet_id int8 not null,
        entries_id int8 not null,
        unique (entries_id)
    );

    create table Timesheet_TimesheetRole (
        Timesheet_id int8 not null,
        involving_id int8 not null,
        unique (involving_id)
    );

    create table TrainingClassType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table TransactionDetail (
        id int8 not null,
        version int8,
        amount numeric(19, 2),
        debitCreditFlag bool not null,
        allocatedTo_id int8,
        partOf_id int8,
        relatedTo_id int8,
        primary key (id)
    );

    create table UnemploymentClaim (
        id int8 not null,
        version int8,
        claimDate timestamp,
        description varchar(255),
        resultingFrom_id int8,
        status_id int8,
        primary key (id)
    );

    create table UnemploymentClaimStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table UnitOfMeasure (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        abbreviation varchar(255),
        description text,
        primary key (id)
    );

    create table UnitOfMeasureConversion (
        id int8 not null,
        version int8,
        conversionFactor varchar(255),
        fromUom_id int8,
        inUnitOfMeasure int8,
        primary key (id)
    );

    create table UnitOfMeasure_UnitOfMeasureConversion (
        UnitOfMeasure_id int8 not null,
        convertedTo_id int8 not null,
        convertedFrom_id int8 not null,
        unique (convertedFrom_id),
        unique (convertedTo_id)
    );

    create table ValidResponsibility (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        comment text,
        associatedWith_id int8,
        definedBy_id int8,
        primary key (id)
    );

    create table WorkEfforAssociation (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        associatedFrom_id int8,
        associatedTo_id int8,
        primary key (id)
    );

    create table WorkEffort (
        DTYPE varchar(31) not null,
        id int8 not null,
        version int8,
        actualCompletionDate date,
        actualHours int8 not null,
        actualStartDate date,
        description text,
        estimatedHours int8 not null,
        name varchar(255),
        scheduledCompletionDate date,
        scheduledStartDate date,
        specialTerms text,
        totalDollarsAllowed numeric(19, 2),
        totalHoursAllowed int8 not null,
        quantityProduced int8,
        quantityRejected int8,
        quantityToProduce int8,
        performedAt_id int8,
        type_id int8,
        versionOf_id int8,
        primary key (id)
    );

    create table WorkEffortAssignmentRate (
        id int8 not null,
        version int8,
        fromDate timestamp,
        thruDate timestamp,
        rateOf_id int8,
        rateType_id int8,
        primary key (id)
    );

    create table WorkEffortBilling (
        id int8 not null,
        version int8,
        percentage int4 not null,
        percentageOf_id int8,
        primary key (id)
    );

    create table WorkEffortGoodStandard (
        id int8 not null,
        version int8,
        estiamtedCost int4 not null,
        estimatedQuantity int4 not null,
        primary key (id)
    );

    create table WorkEffortInvenotryAssignment (
        id int8 not null,
        version int8,
        quantity int4 not null,
        useOf_id int8,
        primary key (id)
    );

    create table WorkEffortPartyAssignment (
        id int8 not null,
        version int8,
        comment text,
        assigned_id int8,
        assignedAt_id int8,
        describedBy_id int8,
        primary key (id)
    );

    create table WorkEffortPartyAssignment_ShipmentItem (
        WorkEffortPartyAssignment_id int8 not null,
        billingForShipmentItem_id int8 not null,
        unique (billingForShipmentItem_id)
    );

    create table WorkEffortRoleType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table WorkEffortSkill (
        id int8 not null,
        version int8,
        estimatedCost int4 not null,
        estimatedDuration int4 not null,
        estimatedNumberOfPeople int4 not null,
        skillType_id int8,
        primary key (id)
    );

    create table WorkEffortStatus (
        id int8 not null,
        version int8,
        changedon timestamp,
        type_id int8,
        primary key (id)
    );

    create table WorkEffortStatusType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        primary key (id)
    );

    create table WorkEffortType (
        id int8 not null,
        version int8,
        description varchar(255) not null,
        standardWorkHours int4 not null,
        usedToProduceDeliverable_id int8,
        usedToProduceProduct_id int8,
        primary key (id)
    );

    create table WorkEffortType_WorkEffortGoodStandard (
        WorkEffortType_id int8 not null,
        goodStandardNeeds_id int8 not null,
        unique (goodStandardNeeds_id)
    );

    create table WorkEffortType_WorkEffortType (
        WorkEffortType_id int8 not null,
        dependsOn_id int8 not null,
        breaksDownInto_id int8 not null,
        unique (dependsOn_id),
        unique (breaksDownInto_id)
    );

    create table WorkEffort_InventoryItem (
        WorkEffort_id int8 not null,
        inventoryProduced_id int8 not null,
        deliverableProduced_id int8 not null,
        unique (inventoryProduced_id),
        unique (deliverableProduced_id)
    );

    create table WorkEffort_OrderItem (
        WorkEffort_id int8 not null,
        fullfillsWorkOderItems_id int8 not null,
        unique (fullfillsWorkOderItems_id)
    );

    create table WorkEffort_Requirement (
        WorkEffort_id int8 not null,
        fulfillsRequirement_id int8 not null,
        unique (fulfillsRequirement_id)
    );

    create table WorkEffort_TimeEntry (
        WorkEffort_id int8 not null,
        trackedVia_id int8 not null,
        unique (trackedVia_id)
    );

    create table WorkEffort_WorkEffortInvenotryAssignment (
        WorkEffort_id int8 not null,
        inNeedOf_id int8 not null,
        unique (inNeedOf_id)
    );

    create table WorkEffort_WorkEffortPartyAssignment (
        WorkEffort_id int8 not null,
        assignedVia_id int8 not null,
        unique (assignedVia_id)
    );

    alter table AccountingPeriod 
        add constraint FK42F1E4D6D7B4753B 
        foreign key (definedBy_id) 
        references PeriodType;

    alter table AccountingPeriod 
        add constraint FK42F1E4D6542F0558 
        foreign key (accountPeriodFor_id) 
        references PartyRole;

    alter table AccountingTransaction 
        add constraint FK281588E95D5C94EB 
        foreign key (originatedFrom_id) 
        references InventoryItemVariance;

    alter table AccountingTransaction 
        add constraint FK281588E92A354B35 
        foreign key (describedBy_id) 
        references AccountingTransactionType;

    alter table AccountingTransaction 
        add constraint FK281588E9A9E5C4F7 
        foreign key (forFixedAsset_id) 
        references FixedAsset;

    alter table AccountingTransaction_TransactionDetail 
        add constraint FK3B6F62D91D07693B 
        foreign key (composedOf_id) 
        references TransactionDetail;

    alter table AccountingTransaction_TransactionDetail 
        add constraint FK3B6F62D934A29A2 
        foreign key (AccountingTransaction_id) 
        references AccountingTransaction;

    alter table Agreement 
        add constraint FKB19B71EAE2625C79 
        foreign key (associatedWith_id) 
        references PartyRelationship;

    alter table AgreementItem 
        add constraint FKB17F5C1D4DE88D7B 
        foreign key (partOf_id) 
        references Agreement;

    alter table AgreementItem_Addendum 
        add constraint FK5E421AB413A612FE 
        foreign key (AgreementItem_id) 
        references AgreementItem;

    alter table AgreementItem_Addendum 
        add constraint FK5E421AB458C2ADAA 
        foreign key (addendums_id) 
        references Addendum;

    alter table AgreementItem_AgreementItem 
        add constraint FK3216937B13A612FE 
        foreign key (AgreementItem_id) 
        references AgreementItem;

    alter table AgreementItem_AgreementItem 
        add constraint FK3216937BC6E4532 
        foreign key (composedOf_id) 
        references AgreementItem;

    alter table AgreementItem_GeographicBoundary 
        add constraint FKEB21CB4313A612FE 
        foreign key (AgreementItem_id) 
        references AgreementItem;

    alter table AgreementItem_GeographicBoundary 
        add constraint FKEB21CB436B1CA7DB 
        foreign key (geographicBoundaries_id) 
        references GeographicBoundary;

    alter table AgreementItem_Party 
        add constraint FKB850A02413A612FE 
        foreign key (AgreementItem_id) 
        references AgreementItem;

    alter table AgreementItem_Party 
        add constraint FKB850A0246D48B350 
        foreign key (organizations_id) 
        references Party;

    alter table AgreementItem_PriceComponent 
        add constraint FK9F406E36ACC19249 
        foreign key (AgreementItem_id) 
        references AgreementItem;

    alter table AgreementItem_PriceComponent 
        add constraint FK9F406E36B619A70E 
        foreign key (priceComponents_id) 
        references PriceComponent;

    alter table AgreementItem_Product 
        add constraint FK379FAAD13A612FE 
        foreign key (AgreementItem_id) 
        references AgreementItem;

    alter table AgreementItem_Product 
        add constraint FK379FAADF4F62EAB 
        foreign key (products_id) 
        references Product;

    alter table AgreementRole 
        add constraint FKB183618065AFBB57 
        foreign key (party_id) 
        references Party;

    alter table AgreementRole 
        add constraint FKB18361809CEED33B 
        foreign key (type_id) 
        references AgreementRoleType;

    alter table AgreementTerm 
        add constraint FKB184257613A612FE 
        foreign key (agreementItem_id) 
        references AgreementItem;

    alter table AgreementTerm 
        add constraint FKB1842576764DC7B 
        foreign key (agreement_id) 
        references Agreement;

    alter table Agreement_Addendum 
        add constraint FK62BD3B87764DC7B 
        foreign key (Agreement_id) 
        references Agreement;

    alter table Agreement_Addendum 
        add constraint FK62BD3B8758C2ADAA 
        foreign key (addendums_id) 
        references Addendum;

    alter table Agreement_AgreementItem 
        add constraint FKC59DFE88764DC7B 
        foreign key (Agreement_id) 
        references Agreement;

    alter table Agreement_AgreementItem 
        add constraint FKC59DFE88F6DE9C7B 
        foreign key (items_id) 
        references AgreementItem;

    alter table Agreement_AgreementRole 
        add constraint FKC5A203EB764DC7B 
        foreign key (Agreement_id) 
        references Agreement;

    alter table Agreement_AgreementRole 
        add constraint FKC5A203EB89ACF5FE 
        foreign key (roles_id) 
        references AgreementRole;

    alter table Agreement_AgreementTerm 
        add constraint FKC5A2C7E196FAD446 
        foreign key (terms_id) 
        references AgreementTerm;

    alter table Agreement_AgreementTerm 
        add constraint FKC5A2C7E1764DC7B 
        foreign key (Agreement_id) 
        references Agreement;

    alter table Agreement_GeographicBoundary 
        add constraint FK20B44056764DC7B 
        foreign key (Agreement_id) 
        references Agreement;

    alter table Agreement_GeographicBoundary 
        add constraint FK20B4405632F17637 
        foreign key (geographicalApplicability_id) 
        references GeographicBoundary;

    alter table BenefitType_PartyBenefit 
        add constraint FKF94F101F2885A61 
        foreign key (BenefitType_id) 
        references BenefitType;

    alter table BenefitType_PartyBenefit 
        add constraint FKF94F101FC8BA6862 
        foreign key (partyBenefits_id) 
        references PartyBenefit;

    alter table BillingAccountRole 
        add constraint FKA52A16E89F9CDC79 
        foreign key (roleFor_id) 
        references BillingAccount;

    alter table BillingAccountRole 
        add constraint FKA52A16E894BB9362 
        foreign key (type_id) 
        references BillingAccountRoleType;

    alter table BillingAccount_BillingAccountRole 
        add constraint FKEC320CF59939E95A 
        foreign key (BillingAccount_id) 
        references BillingAccount;

    alter table BillingAccount_BillingAccountRole 
        add constraint FKEC320CF55911282E 
        foreign key (usedBy_id) 
        references BillingAccountRole;

    alter table BillingAccount_Invoice 
        add constraint FKB3C42B209939E95A 
        foreign key (BillingAccount_id) 
        references BillingAccount;

    alter table BillingAccount_Invoice 
        add constraint FKB3C42B20DE4DAB88 
        foreign key (billedFor_id) 
        references Invoice;

    alter table Budget 
        add constraint FK773F9B65E41C4E91 
        foreign key (associatedWith_id) 
        references StandardTimePeriod;

    alter table Budget 
        add constraint FK773F9B65864059F7 
        foreign key (type_id) 
        references BudgetType;

    alter table BudgetItem 
        add constraint FK4DAC50187396012A 
        foreign key (type_id) 
        references BudgetItemType;

    alter table BudgetItemType_GlBudgetXref 
        add constraint FK896B6C92795DFE52 
        foreign key (BudgetItemType_id) 
        references BudgetItemType;

    alter table BudgetItemType_GlBudgetXref 
        add constraint FK896B6C9235D4E8AE 
        foreign key (assignedTo_id) 
        references GlBudgetXref;

    alter table BudgetItem_BudgetItem 
        add constraint FK79B3D69F14E18041 
        foreign key (composedOf_id) 
        references BudgetItem;

    alter table BudgetItem_BudgetItem 
        add constraint FK79B3D69FD7AA872 
        foreign key (BudgetItem_id) 
        references BudgetItem;

    alter table BudgetItem_BudgetRevisionImpact 
        add constraint FKD928AD8DD7AA872 
        foreign key (BudgetItem_id) 
        references BudgetItem;

    alter table BudgetItem_BudgetRevisionImpact 
        add constraint FKD928AD8DE233FF90 
        foreign key (affectedBy_id) 
        references BudgetRevisionImpact;

    alter table BudgetItem_OrderItem 
        add constraint FK9B504BFAD7AA872 
        foreign key (BudgetItem_id) 
        references BudgetItem;

    alter table BudgetItem_OrderItem 
        add constraint FK9B504BFA24C6C332 
        foreign key (usedToBuy_id) 
        references OrderItem;

    alter table BudgetItem_PaymentBudgetAllocation 
        add constraint FKDEE058E4D7AA872 
        foreign key (BudgetItem_id) 
        references BudgetItem;

    alter table BudgetItem_PaymentBudgetAllocation 
        add constraint FKDEE058E4BC4D5E9D 
        foreign key (usedToPay_id) 
        references PaymentBudgetAllocation;

    alter table BudgetItem_RequirementBudgetAllocation 
        add constraint FK2AAFE4A1D7AA872 
        foreign key (BudgetItem_id) 
        references BudgetItem;

    alter table BudgetItem_RequirementBudgetAllocation 
        add constraint FK2AAFE4A19C278147 
        foreign key (providesFundingVia_id) 
        references RequirementBudgetAllocation;

    alter table BudgetReview 
        add constraint FKA2689F1D2B76B289 
        foreign key (forBudget_id) 
        references Budget;

    alter table BudgetReview 
        add constraint FKA2689F1D6DE65F4F 
        foreign key (result_id) 
        references BudgetReviewResultType;

    alter table BudgetRevision 
        add constraint FKAAC382607A6118C9 
        foreign key (revisionFor_id) 
        references Budget;

    alter table BudgetRevisionImpact 
        add constraint FK8FB663C6C72DBB8B 
        foreign key (fromBudgetRevision_id) 
        references BudgetRevision;

    alter table BudgetRevisionImpact 
        add constraint FK8FB663C64E41E28C 
        foreign key (affects_id) 
        references BudgetItem;

    alter table BudgetRevision_BudgetRevisionImpact 
        add constraint FK54813845B59B416E 
        foreign key (affecting_id) 
        references BudgetRevisionImpact;

    alter table BudgetRevision_BudgetRevisionImpact 
        add constraint FK54813845BD2CC9F5 
        foreign key (BudgetRevision_id) 
        references BudgetRevision;

    alter table BudgetRole 
        add constraint FK4DB0557B1D829D0D 
        foreign key (type_id) 
        references BudgetRoleType;

    alter table BudgetScenarioApplication 
        add constraint FK47193FFBB934CBFB 
        foreign key (fromScenario_id) 
        references BudgetScenario;

    alter table BudgetScenarioApplication 
        add constraint FK47193FFBC86FCE5 
        foreign key (affectingBudgetItem_id) 
        references BudgetItem;

    alter table BudgetScenarioApplication 
        add constraint FK47193FFB8D477325 
        foreign key (affectingBudget_id) 
        references Budget;

    alter table BudgetScenarioRule 
        add constraint FKCD1436B154CB3041 
        foreign key (forType_id) 
        references BudgetItemType;

    alter table BudgetScenarioRule 
        add constraint FKCD1436B17BDB3D7C 
        foreign key (forScenario_id) 
        references BudgetScenario;

    alter table BudgetScenario_BudgetScenarioApplication 
        add constraint FK2788365149ACA682 
        foreign key (affecting_id) 
        references BudgetScenarioApplication;

    alter table BudgetScenario_BudgetScenarioApplication 
        add constraint FK278836512E64F580 
        foreign key (BudgetScenario_id) 
        references BudgetScenario;

    alter table BudgetScenario_BudgetScenarioRule 
        add constraint FK4EC151B4FC57B66 
        foreign key (affectedBy_id) 
        references BudgetScenarioRule;

    alter table BudgetScenario_BudgetScenarioRule 
        add constraint FK4EC151B2E64F580 
        foreign key (BudgetScenario_id) 
        references BudgetScenario;

    alter table BudgetStatus 
        add constraint FKA4E777B72B76B289 
        foreign key (forBudget_id) 
        references Budget;

    alter table BudgetStatus 
        add constraint FKA4E777B729E5C349 
        foreign key (type_id) 
        references BudgetStatusType;

    alter table Budget_BudgetItem 
        add constraint FK222693214E18041 
        foreign key (composedOf_id) 
        references BudgetItem;

    alter table Budget_BudgetItem 
        add constraint FK2226932C2D0ED32 
        foreign key (Budget_id) 
        references Budget;

    alter table Budget_BudgetReview 
        add constraint FK11BCD9B7C781573A 
        foreign key (reviews_id) 
        references BudgetReview;

    alter table Budget_BudgetReview 
        add constraint FK11BCD9B7C2D0ED32 
        foreign key (Budget_id) 
        references Budget;

    alter table Budget_BudgetRevision 
        add constraint FK95F37E7AE438CD72 
        foreign key (revisedBy_id) 
        references BudgetRevision;

    alter table Budget_BudgetRevision 
        add constraint FK95F37E7AC2D0ED32 
        foreign key (Budget_id) 
        references Budget;

    alter table Budget_BudgetRole 
        add constraint FK2266E95AD49C833 
        foreign key (involving_id) 
        references BudgetRole;

    alter table Budget_BudgetRole 
        add constraint FK2266E95C2D0ED32 
        foreign key (Budget_id) 
        references Budget;

    alter table Budget_BudgetStatus 
        add constraint FK143BB251204351D9 
        foreign key (describedBy_id) 
        references BudgetStatus;

    alter table Budget_BudgetStatus 
        add constraint FK143BB251C2D0ED32 
        foreign key (Budget_id) 
        references Budget;

    alter table CaseRole 
        add constraint FK51EBBE6CE72CA52 
        foreign key (roleFor_id) 
        references Kase;

    alter table CaseRole 
        add constraint FK51EBBE6A3D2FAA5 
        foreign key (describedBy_id) 
        references CaseRoleType;

    alter table CaseRole 
        add constraint FK51EBBE6C30631B2 
        foreign key (ofParty) 
        references Party;

    alter table CommunicationEvent 
        add constraint FK3612E4844512D5D5 
        foreign key (monitoredBy_id) 
        references CommunicationEventStatusType;

    alter table CommunicationEvent 
        add constraint FK3612E484A590046B 
        foreign key (inTheContextOf_id) 
        references PartyRelationship;

    alter table CommunicationEvent 
        add constraint FK3612E484C7F9672F 
        foreign key (occursVia_id) 
        references PartyContactMechanism;

    alter table CommunicationEventRole 
        add constraint FK716BF71AAB206F20 
        foreign key (forParty_id) 
        references Party;

    alter table CommunicationEventRole 
        add constraint FK716BF71AD7935D5A 
        foreign key (communicationEventOf) 
        references CommunicationEvent;

    alter table CommunicationEventRole 
        add constraint FK716BF71ABD32D899 
        foreign key (describedBy_id) 
        references CommunicationEventRoleType;

    alter table CommunicationEventRole 
        add constraint FK716BF71A40B6762F 
        foreign key (type_id) 
        references CommunicationEventRoleType;

    alter table CommunicationEventWorkEffort 
        add constraint FKE5602F01F922D5F5 
        foreign key (eventFrom_id) 
        references CommunicationEvent;

    alter table CommunicationEvent_CommunicationEventPurpose 
        add constraint FKF7C4B3FF7979A2B5 
        foreign key (CommunicationEvent_id) 
        references CommunicationEvent;

    alter table CommunicationEvent_CommunicationEventPurpose 
        add constraint FKF7C4B3FFD019E217 
        foreign key (categorizedBy_id) 
        references CommunicationEventPurpose;

    alter table CommunicationEvent_Kase 
        add constraint FKBCB99923128ADE89 
        foreign key (asPartOf_id) 
        references Kase;

    alter table CommunicationEvent_Kase 
        add constraint FKBCB99923F7A3B420 
        foreign key (encompassing_id) 
        references CommunicationEvent;

    alter table ContactMechanism_PartyPostalAddress 
        add constraint FK343EDE491FD0F36C 
        foreign key (locationFor_id) 
        references PartyPostalAddress;

    alter table ContactMechanism_PartyPostalAddress 
        add constraint FK343EDE493866A598 
        foreign key (ContactMechanism_id) 
        references ContactMechanism;

    alter table Container 
        add constraint FK5EF36C611B667538 
        foreign key (describedBy_id) 
        references ContainerType;

    alter table Deduction 
        add constraint FKD543C045E94855F4 
        foreign key (type_id) 
        references DeductionType;

    alter table Deliverable 
        add constraint FK2AE02BDF48CE15D3 
        foreign key (type_id) 
        references DeliverableType;

    alter table Deliverable_Requirement 
        add constraint FKF51937C396A73014 
        foreign key (Deliverable_id) 
        references Deliverable;

    alter table Deliverable_Requirement 
        add constraint FKF51937C3F687D32B 
        foreign key (producedBy_id) 
        references Requirement;

    alter table DesiredFeature 
        add constraint FKA3BA7F1C6CF3AB03 
        foreign key (describedBy_id) 
        references ProductFeature;

    alter table Document 
        add constraint FK3737353B3DB5494E 
        foreign key (forItem_id) 
        references ShipmentItem;

    alter table Document 
        add constraint FK3737353B37E0DE50 
        foreign key (forPackage_id) 
        references ShipmentPackage;

    alter table Document 
        add constraint FK3737353B610CC534 
        foreign key (forShipment_id) 
        references Shipment;

    alter table EmploymentApplication 
        add constraint FK9C97EDA4256BE386 
        foreign key (source_id) 
        references EmploymnetApplicationSourceType;

    alter table EmploymentApplication 
        add constraint FK9C97EDA41FFADA18 
        foreign key (status_id) 
        references EmploymentApplicationStatusType;

    alter table EmploymentApplication 
        add constraint FK9C97EDA48910A494 
        foreign key (forPosition_id) 
        references Position;

    alter table EstimatedProductCost 
        add constraint FK8F3CFFA0FDF6CCA4 
        foreign key (specifiedForOrganization_id) 
        references Party;

    alter table EstimatedProductCost 
        add constraint FK8F3CFFA0B572B3E8 
        foreign key (calculatedForFeature_id) 
        references ProductFeature;

    alter table EstimatedProductCost 
        add constraint FK8F3CFFA0516B43CB 
        foreign key (calculatedForProduct_id) 
        references Product;

    alter table EstimatedProductCost 
        add constraint FK8F3CFFA0EFB38180 
        foreign key (specifiedForGeographicBoundary_id) 
        references GeographicBoundary;

    alter table EstimatedProductCost 
        add constraint FK8F3CFFA081BCE83B 
        foreign key (categorizedBy_id) 
        references CostComponentType;

    alter table Facility 
        add constraint FK21B8D2C34674D21B 
        foreign key (partOf_id) 
        references Facility;

    alter table FacilityContactMechanism 
        add constraint FK8BB433FC126B3FE7 
        foreign key (specifiedVia_id) 
        references ContactMechanism;

    alter table FacilityContactMechanism 
        add constraint FK8BB433FCF5EAEC2D 
        foreign key (mechansimToContact_id) 
        references Facility;

    alter table FacilityRole 
        add constraint FK1FE2ADD9AB206F20 
        foreign key (forParty_id) 
        references Party;

    alter table FacilityRole 
        add constraint FK1FE2ADD9CE686B25 
        foreign key (ofFacility) 
        references Facility;

    alter table FacilityRole 
        add constraint FK1FE2ADD99E38DA45 
        foreign key (describedBy_id) 
        references FacilityRoleType;

    alter table Facility_Facility 
        add constraint FKC7229CBF7FD799BE 
        foreign key (madeUpOf_id) 
        references Facility;

    alter table Facility_Facility 
        add constraint FKC7229CBF911C11E2 
        foreign key (Facility_id) 
        references Facility;

    alter table Facility_FacilityContactMechanism 
        add constraint FK5A285F8724E2B4F 
        foreign key (contactedVia_id) 
        references FacilityContactMechanism;

    alter table Facility_FacilityContactMechanism 
        add constraint FK5A285F8911C11E2 
        foreign key (Facility_id) 
        references Facility;

    alter table Facility_FacilityRole 
        add constraint FK71F19D5274D3A01 
        foreign key (involving_id) 
        references FacilityRole;

    alter table Facility_FacilityRole 
        add constraint FK71F19D5911C11E2 
        foreign key (Facility_id) 
        references Facility;

    alter table FinancialAccount 
        add constraint FK28B20D8477B32CFB 
        foreign key (type_id) 
        references FinancialAccountType;

    alter table FinancialAccountRole 
        add constraint FK3E4EA01AA38C4E11 
        foreign key (type_id) 
        references FinancialAccountRoleType;

    alter table FinancialAccountTransaction 
        add constraint FKB41792BA497E4BCE 
        foreign key (affecting_id) 
        references FinancialAccount;

    alter table FinancialAccountTransaction 
        add constraint FKB41792BAD038DAAD 
        foreign key (causedBy_id) 
        references Payment;

    alter table FinancialAccount_FinancialAccountRole 
        add constraint FKAD0E07F560A8C397 
        foreign key (FinancialAccount_id) 
        references FinancialAccount;

    alter table FinancialAccount_FinancialAccountRole 
        add constraint FKAD0E07F5B40B9C75 
        foreign key (ownedBy_id) 
        references FinancialAccountRole;

    alter table FinancialAccount_FinancialAccountTransaction 
        add constraint FK7727AE7F60A8C397 
        foreign key (FinancialAccount_id) 
        references FinancialAccount;

    alter table FinancialAccount_FinancialAccountTransaction 
        add constraint FK7727AE7F5D99FE82 
        foreign key (transactions_id) 
        references FinancialAccountTransaction;

    alter table FixedAssetDepreciationMethod 
        add constraint FKCB6F09EACF766420 
        foreign key (depreciationMethod_id) 
        references DepreciationMethod;

    alter table FixedAsset_FixedAssetDepreciationMethod 
        add constraint FKA3DAF4D7C473936 
        foreign key (depreciatedVia_id) 
        references FixedAssetDepreciationMethod;

    alter table FixedAsset_FixedAssetDepreciationMethod 
        add constraint FKA3DAF4D3EE08320 
        foreign key (FixedAsset_id) 
        references FixedAsset;

    alter table GeneralLedgerAccount_GlBudgetXref 
        add constraint FK889357A81153D610 
        foreign key (budgetLineItems_id) 
        references GlBudgetXref;

    alter table GeneralLedgerAccount_GlBudgetXref 
        add constraint FK889357A821800942 
        foreign key (GeneralLedgerAccount_id) 
        references GeneralLedgerAccount;

    alter table GeneralLedgerAccount_OrganizationGlAccount 
        add constraint FKBBE45A128BA7C0BB 
        foreign key (associatedWith_id) 
        references OrganizationGlAccount;

    alter table GeneralLedgerAccount_OrganizationGlAccount 
        add constraint FKBBE45A1221800942 
        foreign key (GeneralLedgerAccount_id) 
        references GeneralLedgerAccount;

    alter table GeographicBoundary 
        add constraint FK2A6717E12293321A 
        foreign key (type_id) 
        references GeographicBoundaryType;

    alter table GeographicBoundary_ContactMechanism 
        add constraint FKEF862FD7852172B2 
        foreign key (boundaryFor_id) 
        references ContactMechanism;

    alter table GeographicBoundary_ContactMechanism 
        add constraint FKEF862FD7A3A07FEF 
        foreign key (within_id) 
        references GeographicBoundary;

    alter table GeographicBoundary_GeographicBoundary 
        add constraint FK725A50FFF79D8F9 
        foreign key (GeographicBoundary_id) 
        references GeographicBoundary;

    alter table GeographicBoundary_GeographicBoundary 
        add constraint FK725A50FFA3A07FEF 
        foreign key (within_id) 
        references GeographicBoundary;

    alter table GeographicBoundary_GeographicBoundary 
        add constraint FK725A50FF7915E1BB 
        foreign key (contains_id) 
        references GeographicBoundary;

    alter table GeographicBoundary_ReorderGuideline 
        add constraint FK3CE4E2F3F79D8F9 
        foreign key (GeographicBoundary_id) 
        references GeographicBoundary;

    alter table GeographicBoundary_ReorderGuideline 
        add constraint FK3CE4E2F347859402 
        foreign key (reorderGuideline_id) 
        references ReorderGuideline;

    alter table GeographicBoundary_SalesTaxLookup 
        add constraint FK3AB331971CBCCE98 
        foreign key (salesTaxLookup_id) 
        references SalesTaxLookup;

    alter table GeographicBoundary_SalesTaxLookup 
        add constraint FK3AB33197F79D8F9 
        foreign key (GeographicBoundary_id) 
        references GeographicBoundary;

    alter table GlBudgetXref 
        add constraint FK407360E56EC08C24 
        foreign key (mappedToBudgetItemType_id) 
        references BudgetItemType;

    alter table GlBudgetXref 
        add constraint FK407360E5C6249BC4 
        foreign key (mappedToGlAccount_id) 
        references GeneralLedgerAccount;

    alter table GoodIdentification 
        add constraint FK42D5BCABA07B3A0 
        foreign key (definedAs_id) 
        references IdentificationType;

    alter table GoodIdentification 
        add constraint FK42D5BCABEB4E1CD1 
        foreign key (identifierFor_id) 
        references Product;

    alter table IdentificationType_GoodIdentification 
        add constraint FK4DB9EF6241A8B9D3 
        foreign key (IdentificationType_id) 
        references IdentificationType;

    alter table IdentificationType_GoodIdentification 
        add constraint FK4DB9EF62484C07AB 
        foreign key (usedToDefine_id) 
        references GoodIdentification;

    alter table InventoryItem 
        add constraint FKD4AE2A6FC6ED3240 
        foreign key (locatedAt_id) 
        references Facility;

    alter table InventoryItem 
        add constraint FKD4AE2A6F7DB69EB4 
        foreign key (partOf_id) 
        references Lot;

    alter table InventoryItem 
        add constraint FKD4AE2A6FFD6155A 
        foreign key (physicalOccurenceOf_id) 
        references Product;

    alter table InventoryItem 
        add constraint FKD4AE2A6F6ECC9B91 
        foreign key (locatedWithin_id) 
        references Container;

    alter table InventoryItem 
        add constraint FKD4AE2A6F6B16EE6C 
        foreign key (inTheStateOf_id) 
        references InventoryItemStatusType;

    alter table InventoryItemVariance 
        add constraint FK83EFAE00CEED610F 
        foreign key (explainedWith_id) 
        references Reason;

    alter table InventoryItemVariance 
        add constraint FK83EFAE00D96E31C0 
        foreign key (adjustmentFor_id) 
        references InventoryItem;

    alter table InvociceStatus 
        add constraint FKE72BC29881793794 
        foreign key (statusFor_id) 
        references Invoice;

    alter table InvociceStatus 
        add constraint FKE72BC298F4624939 
        foreign key (type_id) 
        references InvoiceStatusType;

    alter table Invoice 
        add constraint FKD80EDB0DB21CF740 
        foreign key (billedToAccount_id) 
        references BillingAccount;

    alter table InvoiceItem 
        add constraint FK30037BC0DA24A95 
        foreign key (chargeForProduct_id) 
        references Product;

    alter table InvoiceItem 
        add constraint FK30037BC08AAE811E 
        foreign key (type_id) 
        references InvoiceItemType;

    alter table InvoiceItem 
        add constraint FK30037BC071A9BAB2 
        foreign key (chargeforFeature_id) 
        references ProductFeature;

    alter table InvoiceItem 
        add constraint FK30037BC01FF2ED70 
        foreign key (chargeForItem_id) 
        references InventoryItem;

    alter table InvoiceItem_InvoiceItem 
        add constraint FK24D7B5C19A0226D8 
        foreign key (adjustments_id) 
        references InvoiceItem;

    alter table InvoiceItem_InvoiceItem 
        add constraint FK24D7B5C11392F97E 
        foreign key (InvoiceItem_id) 
        references InvoiceItem;

    alter table InvoiceItem_InvoiceItem 
        add constraint FK24D7B5C115E17764 
        foreign key (soldWith_id) 
        references InvoiceItem;

    alter table InvoiceItem_InvoiceTerm 
        add constraint FK24DC7F1A80C71C26 
        foreign key (terms_id) 
        references InvoiceTerm;

    alter table InvoiceItem_InvoiceTerm 
        add constraint FK24DC7F1A1392F97E 
        foreign key (InvoiceItem_id) 
        references InvoiceItem;

    alter table InvoiceItem_OrderItemBilling 
        add constraint FK88A87A791392F97E 
        foreign key (InvoiceItem_id) 
        references InvoiceItem;

    alter table InvoiceItem_OrderItemBilling 
        add constraint FK88A87A79BA10DBD0 
        foreign key (billingForOrderItem_id) 
        references OrderItemBilling;

    alter table InvoiceItem_ShipmentItem 
        add constraint FK8D345E0C1392F97E 
        foreign key (InvoiceItem_id) 
        references InvoiceItem;

    alter table InvoiceItem_ShipmentItem 
        add constraint FK8D345E0C7073492F 
        foreign key (billingForShipmentItem_id) 
        references ShipmentItem;

    alter table InvoiceItem_TimeEntry 
        add constraint FKF51D63C67A2FE939 
        foreign key (billingForTimeEntry_id) 
        references TimeEntry;

    alter table InvoiceItem_TimeEntry 
        add constraint FKF51D63C61392F97E 
        foreign key (InvoiceItem_id) 
        references InvoiceItem;

    alter table InvoiceItem_WorkEffortBilling 
        add constraint FK15C7997FBA54FFFE 
        foreign key (billingForWorkEffort_id) 
        references WorkEffortBilling;

    alter table InvoiceItem_WorkEffortBilling 
        add constraint FK15C7997F1392F97E 
        foreign key (InvoiceItem_id) 
        references InvoiceItem;

    alter table InvoiceTerm 
        add constraint FK30084519DC56FECC 
        foreign key (conditionForInvoiceItem_id) 
        references InvoiceItem;

    alter table InvoiceTerm 
        add constraint FK3008451911BA808C 
        foreign key (conditionForInvoice_id) 
        references Invoice;

    alter table InvoiceTerm 
        add constraint FK30084519F669376D 
        foreign key (type_id) 
        references InvoiceTermType;

    alter table Invoice_InvoiceItem 
        add constraint FK7135898E31801A35 
        foreign key (composedOf_id) 
        references InvoiceItem;

    alter table Invoice_InvoiceItem 
        add constraint FK7135898E5673A43E 
        foreign key (Invoice_id) 
        references Invoice;

    alter table Invoice_InvoiceRole 
        add constraint FK71398EF15673A43E 
        foreign key (Invoice_id) 
        references Invoice;

    alter table Invoice_InvoiceRole 
        add constraint FK71398EF1C9E86227 
        foreign key (involving_id) 
        references InvoiceRole;

    alter table Invoice_InvoiceTerm 
        add constraint FK713A52E780C71C26 
        foreign key (terms_id) 
        references InvoiceTerm;

    alter table Invoice_InvoiceTerm 
        add constraint FK713A52E75673A43E 
        foreign key (Invoice_id) 
        references Invoice;

    alter table ItemIssuance 
        add constraint FK58E444AEC1F58E87 
        foreign key (issuedFrom_id) 
        references InventoryItem;

    alter table ItemIssuance 
        add constraint FK58E444AEF2D63A8A 
        foreign key (issuedAccordingTo_id) 
        references PicklistItem;

    alter table ItemIssuance 
        add constraint FK58E444AEC360AB2C 
        foreign key (issuedFor_id) 
        references ShipmentItem;

    alter table ItemIssuanceRole 
        add constraint FKEDD32449760AA8A 
        foreign key (roleFor_id) 
        references Party;

    alter table ItemIssuanceRole 
        add constraint FKEDD32444A2B216E 
        foreign key (type_id) 
        references ItemIssuanceRoleType;

    alter table Kase 
        add constraint FK239248EDB1775 
        foreign key (inTheStateOf_id) 
        references CaseStatusType;

    alter table MarketInterest 
        add constraint FKADE36FA67F7CD03B 
        foreign key (productCategoryOf) 
        references ProductCategory;

    alter table MarketInterest 
        add constraint FKADE36FA67DF74904 
        foreign key (interestFor_id) 
        references PartyClassification;

    alter table OrderAdjustment 
        add constraint FKBE3FBF3B2B41026C 
        foreign key (affectingOrder_id) 
        references Orders;

    alter table OrderAdjustment 
        add constraint FKBE3FBF3BC2BCE140 
        foreign key (affectingItem_id) 
        references OrderItem;

    alter table OrderContactMechanism 
        add constraint FKE981C26722532B7B 
        foreign key (usedFor_id) 
        references ContactMechanismPurposeType;

    alter table OrderContactMechanism 
        add constraint FKE981C267C9BC972C 
        foreign key (contactMechanism_id) 
        references ContactMechanism;

    alter table OrderItem 
        add constraint FK60163F61F147611A 
        foreign key (shippedToMechanism_id) 
        references ContactMechanism;

    alter table OrderItem 
        add constraint FK60163F61C667D8E6 
        foreign key (forFeature_id) 
        references ProductFeature;

    alter table OrderItem 
        add constraint FK60163F6158E71243 
        foreign key (shipToMechanism_id) 
        references ContactMechanism;

    alter table OrderItem 
        add constraint FK60163F619E05FC5E 
        foreign key (shipToCustomer_id) 
        references PartyRole;

    alter table OrderItem 
        add constraint FK60163F61D3F6A6ED 
        foreign key (orderedWith_id) 
        references OrderItem;

    alter table OrderItem 
        add constraint FK60163F61626068C9 
        foreign key (forProduct_id) 
        references Product;

    alter table OrderItem 
        add constraint FK60163F6139E6892C 
        foreign key (designatedShipTo_id) 
        references PartyRole;

    alter table OrderItemBilling 
        add constraint FK9E339BDA9B03DE10 
        foreign key (billingFor_id) 
        references InvoiceItem;

    alter table OrderItemBilling 
        add constraint FK9E339BDA88187B9E 
        foreign key (quantityOf_id) 
        references OrderItem;

    alter table OrderItemContactMechanism 
        add constraint FKE290A49A5505DD6D 
        foreign key (type_id) 
        references ContactMechanismPurposeType;

    alter table OrderItemContactMechanism 
        add constraint FKE290A49AAE3AA30C 
        foreign key (mechanism_id) 
        references ContactMechanism;

    alter table OrderItemRole 
        add constraint FKE25C9B77E2750694 
        foreign key (assignedTo_id) 
        references Party;

    alter table OrderItemRole 
        add constraint FKE25C9B77DFB037F6 
        foreign key (type_id) 
        references OrderItemRoleType;

    alter table OrderItem_OrderItem 
        add constraint FK769274035CAD862C 
        foreign key (usedToFillfill_id) 
        references OrderItem;

    alter table OrderItem_OrderItem 
        add constraint FK76927403619F3333 
        foreign key (associatedWith_id) 
        references OrderItem;

    alter table OrderItem_OrderItemContactMechanism 
        add constraint FKDA3553C125BBF7F 
        foreign key (OrderItem_id) 
        references OrderItem;

    alter table OrderItem_OrderItemContactMechanism 
        add constraint FKDA3553C86B5B74 
        foreign key (having_id) 
        references OrderItemContactMechanism;

    alter table OrderItem_OrderItemRole 
        add constraint FK4089AF19125BBF7F 
        foreign key (OrderItem_id) 
        references OrderItem;

    alter table OrderItem_OrderItemRole 
        add constraint FK4089AF1981433F9C 
        foreign key (involving_id) 
        references OrderItemRole;

    alter table OrderRequirementCommitment 
        add constraint FKD2DDED2A5A4CA048 
        foreign key (usageOf_id) 
        references OrderItem;

    alter table OrderRole 
        add constraint FK601A44C4B23EAF83 
        foreign key (partOf_id) 
        references Orders;

    alter table OrderRole 
        add constraint FK601A44C412FD7383 
        foreign key (involving_id) 
        references Party;

    alter table OrderRole 
        add constraint FK601A44C44266D43 
        foreign key (type_id) 
        references OrderRoleType;

    alter table OrderShipment 
        add constraint FK7D675EE84C621AC5 
        foreign key (shippedVia_id) 
        references OrderItem;

    alter table OrderShipment 
        add constraint FK7D675EE8B978DF99 
        foreign key (shipmentOf_id) 
        references ShipmentItem;

    alter table OrderStatus 
        add constraint FKC492B8C0F9F36B56 
        foreign key (statusForOrder_id) 
        references Orders;

    alter table OrderStatus 
        add constraint FKC492B8C08078D383 
        foreign key (describedBy_id) 
        references OrderStatusType;

    alter table OrderStatus 
        add constraint FKC492B8C03D04B316 
        foreign key (statusForItem_id) 
        references OrderItem;

    alter table OrderTerm 
        add constraint FK601B08BA360B0FF 
        foreign key (conditionForItem_id) 
        references OrderItem;

    alter table OrderTerm 
        add constraint FK601B08BAFF172A8D 
        foreign key (conditionForOrder_id) 
        references Orders;

    alter table OrderTerm 
        add constraint FK601B08BA9D68F4BC 
        foreign key (describedBy_id) 
        references OrderTermType;

    alter table Orders 
        add constraint FK8D444F052ECBF93F 
        foreign key (placedBy_id) 
        references PartyRole;

    alter table Orders 
        add constraint FK8D444F0567A4EB63 
        foreign key (requestedBillTo_id) 
        references PartyRole;

    alter table Orders 
        add constraint FK8D444F053C4432F3 
        foreign key (placedUsingMechanism_id) 
        references ContactMechanism;

    alter table Orders 
        add constraint FK8D444F0580390711 
        foreign key (billTo_id) 
        references PartyRole;

    alter table Orders 
        add constraint FK8D444F05AA5971BE 
        foreign key (takenVia_id) 
        references ContactMechanism;

    alter table Orders 
        add constraint FK8D444F0555BB113E 
        foreign key (placedUsing_id) 
        references ContactMechanism;

    alter table Orders 
        add constraint FK8D444F05FD232AF5 
        foreign key (takenBy_id) 
        references PartyRole;

    alter table Orders 
        add constraint FK8D444F0545CF2184 
        foreign key (billedTo_id) 
        references ContactMechanism;

    alter table Orders 
        add constraint FK8D444F055CFEE9F6 
        foreign key (designatedToBeBilledTo_id) 
        references ContactMechanism;

    alter table Orders_OrderAdjustment 
        add constraint FKF778BA01B935CE04 
        foreign key (affectedBy_id) 
        references OrderAdjustment;

    alter table Orders_OrderAdjustment 
        add constraint FKF778BA015EE7BC8 
        foreign key (Orders_id) 
        references Orders;

    alter table Orders_OrderContactMechanism 
        add constraint FK18A910AD723CAB6C 
        foreign key (contactMechanisms_id) 
        references OrderContactMechanism;

    alter table Orders_OrderContactMechanism 
        add constraint FK18A910AD5EE7BC8 
        foreign key (Orders_id) 
        references Orders;

    alter table Orders_OrderItem 
        add constraint FK4B3C46A71E31DB77 
        foreign key (composedOf_id) 
        references OrderItem;

    alter table Orders_OrderItem 
        add constraint FK4B3C46A75EE7BC8 
        foreign key (Orders_id) 
        references Orders;

    alter table Orders_OrderRole 
        add constraint FK4B404C0AB69A2369 
        foreign key (involving_id) 
        references OrderRole;

    alter table Orders_OrderRole 
        add constraint FK4B404C0A5EE7BC8 
        foreign key (Orders_id) 
        references Orders;

    alter table Orders_OrderStatus 
        add constraint FK7E5406863BA09391 
        foreign key (stateOf_id) 
        references OrderStatus;

    alter table Orders_OrderStatus 
        add constraint FK7E5406865EE7BC8 
        foreign key (Orders_id) 
        references Orders;

    alter table Orders_OrderTerm 
        add constraint FK4B4110005EE7BC8 
        foreign key (Orders_id) 
        references Orders;

    alter table Orders_OrderTerm 
        add constraint FK4B411000F2A05E6B 
        foreign key (subjectTo_id) 
        references OrderTerm;

    alter table OrganizationGlAccount 
        add constraint FKAA7E657546412E82 
        foreign key (accountFor_id) 
        references GeneralLedgerAccount;

    alter table OrganizationGlAccount 
        add constraint FKAA7E6575DEE7DD03 
        foreign key (subsidiaryOf_id) 
        references OrganizationGlAccount;

    alter table OrganizationGlAccount_TransactionDetail 
        add constraint FKD906B4654D2D12 
        foreign key (OrganizationGlAccount_id) 
        references OrganizationGlAccount;

    alter table OrganizationGlAccount_TransactionDetail 
        add constraint FKD906B4656B7E5B24 
        foreign key (consistingOf_id) 
        references TransactionDetail;

    alter table PackagingContent 
        add constraint FKB4A4CF965C801A37 
        foreign key (item_id) 
        references ShipmentItem;

    alter table PartyBenefit 
        add constraint FK394296F19696E767 
        foreign key (benefitFor_id) 
        references PartyRelationship;

    alter table PartyBenefit 
        add constraint FK394296F12E0316D8 
        foreign key (type_id) 
        references BenefitType;

    alter table PartyClassification 
        add constraint FK3608D84C8F1D09FA 
        foreign key (classificationFor_id) 
        references Party;

    alter table PartyContactMechanism 
        add constraint FK8CDE25FFE5ED2F5A 
        foreign key (specifiedFor_id) 
        references PartyRole;

    alter table PartyContactMechanism 
        add constraint FK8CDE25FF126B3FE7 
        foreign key (specifiedVia_id) 
        references ContactMechanism;

    alter table PartyContactMechanism 
        add constraint FK8CDE25FFB3610671 
        foreign key (mechanismToContact_id) 
        references Party;

    alter table PartyContactMechanismPurpose 
        add constraint FK383E821F6BE0F762 
        foreign key (definedVia_id) 
        references ContactMechanismPurposeType;

    alter table PartyContactMechanismPurpose 
        add constraint FK383E821FA55B61CE 
        foreign key (usedWithin_id) 
        references PartyContactMechanism;

    alter table PartyPostalAddress 
        add constraint FK7CE28383A85E8A4C 
        foreign key (locatedAt_id) 
        references ContactMechanism;

    alter table PartyPostalAddress 
        add constraint FK7CE28383F2111444 
        foreign key (specifiedFor_id) 
        references Party;

    alter table PartyQualification 
        add constraint FKF426D4C9189BD0DF 
        foreign key (type_id) 
        references QualificationType;

    alter table PartyRate 
        add constraint FKCFD18C6AA29763B 
        foreign key (rateType_id) 
        references RateType;

    alter table PartyRate 
        add constraint FKCFD18C6BAABFF74 
        foreign key (rateFor_id) 
        references Party;

    alter table PartyRelationship 
        add constraint FKBFACFC1E82C36B80 
        foreign key (relationshipTo_id) 
        references PartyRole;

    alter table PartyRelationship 
        add constraint FKBFACFC1EC6C11FA7 
        foreign key (priority_id) 
        references PriorityType;

    alter table PartyRelationship 
        add constraint FKBFACFC1E8BBDD720 
        foreign key (dueTo_id) 
        references TerminationReason;

    alter table PartyRelationship 
        add constraint FKBFACFC1E1223A6A7 
        foreign key (status_id) 
        references StatusType;

    alter table PartyRelationship 
        add constraint FKBFACFC1EA480DF1 
        foreign key (relationshipFrom_id) 
        references PartyRole;

    alter table PartyRelationship 
        add constraint FKBFACFC1E96A2EB65 
        foreign key (type_id) 
        references RelationshipType;

    alter table PartyRole 
        add constraint FKCFD4C5C9760AA8A 
        foreign key (roleFor_id) 
        references Party;

    alter table PartyRole 
        add constraint FKCFD4C5C35CC073 
        foreign key (type_id) 
        references PartyRoleType;

    alter table PartyRole_ShipmentMethodType 
        add constraint FK97DC51D81F85FC1A 
        foreign key (ableToShipVia_id) 
        references ShipmentMethodType;

    alter table PartyRole_ShipmentMethodType 
        add constraint FK97DC51D8545EBB4A 
        foreign key (transportationUsed_id) 
        references PartyRole;

    alter table PartySkill 
        add constraint FK92B87B2B54523241 
        foreign key (type_id) 
        references SkillType;

    alter table PayGrade_SalaryStep 
        add constraint FK8777B1E6D93B1DDB 
        foreign key (PayGrade_id) 
        references PayGrade;

    alter table PayGrade_SalaryStep 
        add constraint FK8777B1E61770E34A 
        foreign key (steps_id) 
        references SalaryStep;

    alter table PayHistory 
        add constraint FK38C81AEC515FD185 
        foreign key (step_id) 
        references SalaryStep;

    alter table PayHistory 
        add constraint FK38C81AEC16C56BA1 
        foreign key (recordFor_id) 
        references PartyRelationship;

    alter table Payment 
        add constraint FK3454C9E6E7BFD5D5 
        foreign key (paidVia_id) 
        references PaymentMethodType;

    alter table Payment 
        add constraint FK3454C9E61C660DF 
        foreign key (affecting_id) 
        references FinancialAccountTransaction;

    alter table Payment 
        add constraint FK3454C9E6AA8B466A 
        foreign key (depositedVia_id) 
        references FinancialAccountTransaction;

    alter table PaymentApplication 
        add constraint FKB3ABD78A86B93257 
        foreign key (appliedToAccount_id) 
        references BillingAccount;

    alter table PaymentApplication 
        add constraint FKB3ABD78A18D48693 
        foreign key (appliedToItem_id) 
        references InvoiceItem;

    alter table PaymentBudgetAllocation 
        add constraint FKD408CC0B50FC4512 
        foreign key (usageOf_id) 
        references BudgetItem;

    alter table Payment_Deduction 
        add constraint FKADAADD2CF0BB4DA6 
        foreign key (deductions_id) 
        references Deduction;

    alter table Payment_Deduction 
        add constraint FKADAADD2C835C5918 
        foreign key (Payment_id) 
        references Payment;

    alter table Payment_PaymentApplication 
        add constraint FKD5C94E83825261B6 
        foreign key (Payment_id) 
        references Payment;

    alter table Payment_PaymentApplication 
        add constraint FKD5C94E83EB2AFD38 
        foreign key (usedToPay_id) 
        references PaymentApplication;

    alter table Payment_PaymentBudgetAllocation 
        add constraint FK80CBC8B2825261B6 
        foreign key (Payment_id) 
        references Payment;

    alter table Payment_PaymentBudgetAllocation 
        add constraint FK80CBC8B26DD23534 
        foreign key (bookedAgainst_id) 
        references PaymentBudgetAllocation;

    alter table PayrollPreference 
        add constraint FK54DF0BC0E94855F4 
        foreign key (type_id) 
        references DeductionType;

    alter table PerformanceNote 
        add constraint FKB71754225920F01C 
        foreign key (type_id) 
        references PerformanceNoteType;

    alter table PerformanceReview 
        add constraint FK54DA4F88E137831A 
        foreign key (affecting_id) 
        references PayHistory;

    alter table PerformanceReview 
        add constraint FK54DA4F886D58EB5D 
        foreign key (newPosition_id) 
        references Position;

    alter table PerformanceReviewItem 
        add constraint FKB8BA3ABB8DDDDD58 
        foreign key (partOf_id) 
        references PerformanceReview;

    alter table PerformanceReviewItem 
        add constraint FKB8BA3ABB8B4C5A35 
        foreign key (type_id) 
        references PerformanceReviewItemType;

    alter table PerformanceReviewItem 
        add constraint FKB8BA3ABBA8F6AC6F 
        foreign key (scored_id) 
        references PerformanceRatingType;

    alter table PerformanceReview_PerformanceReviewItem 
        add constraint FK3258F544DEAE021A 
        foreign key (PerformanceReview_id) 
        references PerformanceReview;

    alter table PerformanceReview_PerformanceReviewItem 
        add constraint FK3258F544829C6E15 
        foreign key (items_id) 
        references PerformanceReviewItem;

    alter table PersonTraining 
        add constraint FKF002AF6FFA655C2E 
        foreign key (type_id) 
        references TrainingClassType;

    alter table PickList_PicklistItem 
        add constraint FK8D7EA3D2BD24932A 
        foreign key (PickList_id) 
        references PickList;

    alter table PickList_PicklistItem 
        add constraint FK8D7EA3D27618139C 
        foreign key (items_id) 
        references PicklistItem;

    alter table PicklistItem 
        add constraint FK3A8244122F90D27F 
        foreign key (partOf_id) 
        references PickList;

    alter table PicklistItem 
        add constraint FK3A8244122170AF12 
        foreign key (pickedFrom_id) 
        references InventoryItem;

    alter table PicklistItem_ItemIssuance 
        add constraint FKF6817BBDFC997A1 
        foreign key (issueList_id) 
        references ItemIssuance;

    alter table PicklistItem_ItemIssuance 
        add constraint FKF6817BBC5402E4A 
        foreign key (PicklistItem_id) 
        references PicklistItem;

    alter table Position 
        add constraint FK306CFD4962FBE636 
        foreign key (status_id) 
        references PositionStatus;

    alter table Position 
        add constraint FK306CFD493843CA34 
        foreign key (type_id) 
        references PositionType;

    alter table PositionFulfillment 
        add constraint FK13BA04D5DC20DE9F 
        foreign key (fullfillmentOf_id) 
        references Position;

    alter table PositionReportingStructure 
        add constraint FK7930F40E6A7707FA 
        foreign key (subordinate_id) 
        references Position;

    alter table PositionReportingStructure 
        add constraint FK7930F40E4FB0A3F9 
        foreign key (manager_id) 
        references Position;

    alter table PositionResponsibility 
        add constraint FK31A1A3B7D0C9587A 
        foreign key (associatedWith_id) 
        references Position;

    alter table PositionResponsibility 
        add constraint FK31A1A3B772289ECB 
        foreign key (type_id) 
        references ResponsibilityType;

    alter table PositionStatus 
        add constraint FK61D4DE9B620AFE48 
        foreign key (type_id) 
        references PositionStatusType;

    alter table PositionType 
        add constraint FKBD33423FBA5E4 
        foreign key (union_id) 
        references PartyRole;

    alter table PositionTypeClass 
        add constraint FK5BA9A315179CC1BA 
        foreign key (type_id) 
        references PositionClassificationType;

    alter table PositionTypeClass 
        add constraint FK5BA9A315190F6902 
        foreign key (forPositionType_id) 
        references PositionType;

    alter table PositionTypeRate 
        add constraint FKC92D2BA3D80EC585 
        foreign key (associatedWith_id) 
        references SalaryStep;

    alter table PositionTypeRate 
        add constraint FKC92D2BA3807341D2 
        foreign key (forRateType_id) 
        references RateType;

    alter table PositionTypeRate 
        add constraint FKC92D2BA3190F6902 
        foreign key (forPositionType_id) 
        references PositionType;

    alter table PositionType_PositionTypeClass 
        add constraint FKE5061DF98334B672 
        foreign key (typeClasses_id) 
        references PositionTypeClass;

    alter table PositionType_PositionTypeClass 
        add constraint FKE5061DF95A5340EB 
        foreign key (PositionType_id) 
        references PositionType;

    alter table PositionType_PositionTypeRate 
        add constraint FKEEA3C43F2FE08A6B 
        foreign key (rates_id) 
        references PositionTypeRate;

    alter table PositionType_PositionTypeRate 
        add constraint FKEEA3C43F5A5340EB 
        foreign key (PositionType_id) 
        references PositionType;

    alter table PositionType_ValidResponsibility 
        add constraint FK93821AEE5A5340EB 
        foreign key (PositionType_id) 
        references PositionType;

    alter table PositionType_ValidResponsibility 
        add constraint FK93821AEE315C36F9 
        foreign key (validResponsibilities_id) 
        references ValidResponsibility;

    alter table Position_PositionFulfillment 
        add constraint FK8D7310DFBB00783 
        foreign key (filledBy_id) 
        references PositionFulfillment;

    alter table Position_PositionFulfillment 
        add constraint FK8D7310DFB2C6D8FD 
        foreign key (Position_id) 
        references Position;

    alter table Position_PositionResponsibility 
        add constraint FK36C1A36DB2C6D8FD 
        foreign key (Position_id) 
        references Position;

    alter table Position_PositionResponsibility 
        add constraint FK36C1A36D7C7AC3FD 
        foreign key (assigendTo_id) 
        references PositionResponsibility;

    alter table PriceComponent 
        add constraint FKCF0B9D45C782F67 
        foreign key (basedOnGeographicBoundary_id) 
        references GeographicBoundary;

    alter table PriceComponent 
        add constraint FKCF0B9D4AD82DD37 
        foreign key (specifiedFor_id) 
        references Party;

    alter table PriceComponent 
        add constraint FKCF0B9D4A6D0287 
        foreign key (basedOnSaleType_id) 
        references SaleType;

    alter table PriceComponent 
        add constraint FKCF0B9D4989AAC27 
        foreign key (inTheCurrencyOf_id) 
        references UnitOfMeasure;

    alter table PriceComponent 
        add constraint FKCF0B9D4C82DD107 
        foreign key (perTimeFrequencyMeasure) 
        references UnitOfMeasure;

    alter table PriceComponent 
        add constraint FKCF0B9D4A9FAE883 
        foreign key (priceDefinedForProductFeature_id) 
        references ProductFeature;

    alter table PriceComponent 
        add constraint FKCF0B9D42BD152B6 
        foreign key (basedOnProductCategory_id) 
        references ProductCategory;

    alter table PriceComponent 
        add constraint FKCF0B9D4D6ABD0ED 
        foreign key (basedOnQuantityBreak_id) 
        references QuantityBreak;

    alter table PriceComponent 
        add constraint FKCF0B9D4D1E6BBC7 
        foreign key (basedOnOrderValue_id) 
        references OrderValue;

    alter table PriceComponent 
        add constraint FKCF0B9D4219F5175 
        foreign key (basedOnPartyType_id) 
        references PartyClassification;

    alter table PriceComponent 
        add constraint FKCF0B9D47EB91429 
        foreign key (priceDefinedForProduct_id) 
        references Product;

    alter table Product 
        add constraint FK50C664CFA3E6DD93 
        foreign key (measuredUsing_id) 
        references UnitOfMeasure;

    alter table ProductCategory 
        add constraint FKD05546ED65FABB27 
        foreign key (partOf_id) 
        references ProductCategory;

    alter table ProductCategoryClassification 
        add constraint FK21D52433CBA503A4 
        foreign key (categoryFor_id) 
        references Product;

    alter table ProductCategoryClassification 
        add constraint FK21D52433E7C01051 
        foreign key (definedBy_id) 
        references ProductCategory;

    alter table ProductComponent 
        add constraint FK898DD0EEAC269AD5 
        foreign key (productFor_id) 
        references Product;

    alter table ProductComponent 
        add constraint FK898DD0EEDA00AF68 
        foreign key (productComponentIn) 
        references Product;

    alter table ProductFeature 
        add constraint FK81EF77273D9CE26F 
        foreign key (categorizedBy_id) 
        references ProductFeatureCategory;

    alter table ProductFeatureCategory_ProductFeature 
        add constraint FKB9681161A124B328 
        foreign key (categoryFor_id) 
        references ProductFeature;

    alter table ProductFeatureCategory_ProductFeature 
        add constraint FKB9681161A99F0AEC 
        foreign key (ProductFeatureCategory_id) 
        references ProductFeatureCategory;

    alter table ProductFeatureInteraction 
        add constraint FKD3F4D06B1A8525F0 
        foreign key (applicableWithinTheContextOf_id) 
        references Product;

    alter table ProductFeatureInteraction 
        add constraint FKD3F4D06BA2085B97 
        foreign key (productFeatureOf) 
        references ProductFeature;

    alter table ProductFeatureInteraction 
        add constraint FKD3F4D06B1169A7DE 
        foreign key (AFactorIn_id) 
        references ProductFeature;

    alter table ProductFeature_ProductFeatureApplicability 
        add constraint FKD1F6A7C6ED828713 
        foreign key (usedToDefine_id) 
        references ProductFeatureApplicability;

    alter table ProductFeature_ProductFeatureApplicability 
        add constraint FKD1F6A7C67B96A18C 
        foreign key (ProductFeature_id) 
        references ProductFeature;

    alter table ProductFeature_ProductFeatureInteraction 
        add constraint FKD2ECED53FD6A4132 
        foreign key (dependentOnSelectionOf_id) 
        references ProductFeatureInteraction;

    alter table ProductFeature_ProductFeatureInteraction 
        add constraint FKD2ECED537B96A18C 
        foreign key (ProductFeature_id) 
        references ProductFeature;

    alter table ProductObsolescence 
        add constraint FK43FF56B26BBA5F92 
        foreign key (AUseOf_id) 
        references Product;

    alter table ProductObsolescence 
        add constraint FK43FF56B2F6EE5B29 
        foreign key (obsolescenceFor_id) 
        references Product;

    alter table ProductSubstitute 
        add constraint FK96AC6EC9F779C640 
        foreign key (substituteFor_id) 
        references Product;

    alter table ProductSubstitute 
        add constraint FK96AC6EC96BBA5F92 
        foreign key (AUseOf_id) 
        references Product;

    alter table Product_ProductComplement 
        add constraint FK5AEFC8E5BBE575D6 
        foreign key (complimentFor_id) 
        references ProductComplement;

    alter table Product_ProductComplement 
        add constraint FK5AEFC8E5B64D8340 
        foreign key (Product_id) 
        references Product;

    alter table Product_ProductComplement 
        add constraint FK5AEFC8E5E21915A6 
        foreign key (complimentedWith_id) 
        references ProductComplement;

    alter table Product_ProductFeatureInteraction 
        add constraint FKCBF898FB26386444 
        foreign key (usedToDefine_id) 
        references ProductFeatureInteraction;

    alter table Product_ProductFeatureInteraction 
        add constraint FKCBF898FBB64D8340 
        foreign key (Product_id) 
        references Product;

    alter table Product_ProductIncompatibility 
        add constraint FKE8B6B90C3331AA31 
        foreign key (incompatibleWith_id) 
        references ProductIncompatibility;

    alter table Product_ProductIncompatibility 
        add constraint FKE8B6B90CB64D8340 
        foreign key (Product_id) 
        references Product;

    alter table Product_ProductObsolescence 
        add constraint FK5A68CB429AD0A6C1 
        foreign key (AReplacement_id) 
        references ProductObsolescence;

    alter table Product_ProductObsolescence 
        add constraint FK5A68CB42B64D8340 
        foreign key (Product_id) 
        references Product;

    alter table Product_ProductSubstitute 
        add constraint FK4F09C759D3AE75FA 
        foreign key (usedAs_id) 
        references ProductSubstitute;

    alter table Product_ProductSubstitute 
        add constraint FK4F09C759B64D8340 
        foreign key (Product_id) 
        references Product;

    alter table QuantityBreak_PriceComponent 
        add constraint FK8513CA5FE8E6246A 
        foreign key (discountLevelDefinedFor_id) 
        references PriceComponent;

    alter table QuantityBreak_PriceComponent 
        add constraint FK8513CA5F30A6F41B 
        foreign key (QuantityBreak_id) 
        references QuantityBreak;

    alter table Quote 
        add constraint FK4AC4E5C9156087B 
        foreign key (issuedBy_id) 
        references Party;

    alter table Quote 
        add constraint FK4AC4E5CBB55D245 
        foreign key (givenTo_id) 
        references Party;

    alter table QuoteItem 
        add constraint FK1F08AF8FF42AC8DF 
        foreign key (partOf_id) 
        references Quote;

    alter table QuoteItem 
        add constraint FK1F08AF8F853C8286 
        foreign key (responseTo_id) 
        references RequestItem;

    alter table QuoteItem 
        add constraint FK1F08AF8FB64D8340 
        foreign key (product_id) 
        references Product;

    alter table QuoteItem_OrderItem 
        add constraint FK7E5102B19A7043ED 
        foreign key (QuoteItem_id) 
        references QuoteItem;

    alter table QuoteItem_OrderItem 
        add constraint FK7E5102B171568C0E 
        foreign key (orderItems_id) 
        references OrderItem;

    alter table QuoteItem_QuoteTerm 
        add constraint FK3D483C384D4D7C4E 
        foreign key (terms_id) 
        references QuoteTerm;

    alter table QuoteItem_QuoteTerm 
        add constraint FK3D483C389A7043ED 
        foreign key (QuoteItem_id) 
        references QuoteItem;

    alter table QuoteRole 
        add constraint FK1F0CB4F265AFBB57 
        foreign key (party_id) 
        references Party;

    alter table QuoteRole 
        add constraint FK1F0CB4F291816A9F 
        foreign key (type_id) 
        references QuoteRoleType;

    alter table Quote_QuoteItem 
        add constraint FK149CB56C2ABD7E2D 
        foreign key (Quote_id) 
        references Quote;

    alter table Quote_QuoteItem 
        add constraint FK149CB56CD9EA3E1C 
        foreign key (items_id) 
        references QuoteItem;

    alter table Quote_QuoteRole 
        add constraint FK14A0BACF83DADF62 
        foreign key (roles_id) 
        references QuoteRole;

    alter table Quote_QuoteRole 
        add constraint FK14A0BACF2ABD7E2D 
        foreign key (Quote_id) 
        references Quote;

    alter table Quote_QuoteTerm 
        add constraint FK14A17EC54D4D7C4E 
        foreign key (terms_id) 
        references QuoteTerm;

    alter table Quote_QuoteTerm 
        add constraint FK14A17EC52ABD7E2D 
        foreign key (Quote_id) 
        references Quote;

    alter table Reason_InventoryItemVariance 
        add constraint FK6A87CA65C1EAF367 
        foreign key (Reason_id) 
        references Reason;

    alter table Reason_InventoryItemVariance 
        add constraint FK6A87CA6544DA61FD 
        foreign key (explanationFor_id) 
        references InventoryItemVariance;

    alter table RelationshipType 
        add constraint FK6E3AE1B22F2795E2 
        foreign key (toRoleType_id) 
        references PartyRoleType;

    alter table RelationshipType 
        add constraint FK6E3AE1B2D9654953 
        foreign key (fromRoleType_id) 
        references PartyRoleType;

    alter table ReorderGuideline 
        add constraint FK5DD9FA5582E77F91 
        foreign key (basedOnInternalOrganization_id) 
        references PartyRole;

    alter table ReorderGuideline 
        add constraint FK5DD9FA555C782F67 
        foreign key (basedOnGeographicBoundary_id) 
        references GeographicBoundary;

    alter table ReorderGuideline 
        add constraint FK5DD9FA55CB9EEBD8 
        foreign key (guidelineFor_id) 
        references Product;

    alter table ReorderGuideline 
        add constraint FK5DD9FA551D30F9D0 
        foreign key (basedOnFacility_id) 
        references Facility;

    alter table RequestItem 
        add constraint FKA7F1AA226E130EED 
        foreign key (partOf_id) 
        references Requirement;

    alter table RequestItem_RequirementRequest 
        add constraint FKD8A47E29CC6D2120 
        foreign key (RequestItem_id) 
        references RequestItem;

    alter table RequestItem_RequirementRequest 
        add constraint FKD8A47E29315DADA9 
        foreign key (communicationMethod_id) 
        references RequirementRequest;

    alter table RequestRole 
        add constraint FKA7F5AF8565AFBB57 
        foreign key (party_id) 
        references Party;

    alter table RequestRole 
        add constraint FKA7F5AF8546C4930F 
        foreign key (roleType_id) 
        references RequestRoleType;

    alter table Request_RequestItem 
        add constraint FKA1366452B146ECE0 
        foreign key (Request_id) 
        references Request;

    alter table Request_RequestItem 
        add constraint FKA13664526662FAC2 
        foreign key (items_id) 
        references RequestItem;

    alter table Request_RequestRole 
        add constraint FKA13A69B5B146ECE0 
        foreign key (Request_id) 
        references Request;

    alter table Request_RequestRole 
        add constraint FKA13A69B510539C08 
        foreign key (roles_id) 
        references RequestRole;

    alter table Request_RespondingParty 
        add constraint FKDA6DA5C9B146ECE0 
        foreign key (Request_id) 
        references Request;

    alter table Request_RespondingParty 
        add constraint FKDA6DA5C9DEA7D762 
        foreign key (respondingParties_id) 
        references RespondingParty;

    alter table Requirement 
        add constraint FK791284238E8B6DD4 
        foreign key (producedBy_id) 
        references Product;

    alter table Requirement 
        add constraint FK79128423C6A87ABC 
        foreign key (requesting_id) 
        references Product;

    alter table Requirement 
        add constraint FK79128423AEA88BBD 
        foreign key (neededAt_id) 
        references Facility;

    alter table Requirement 
        add constraint FK7912842351F9A04E 
        foreign key (toProduce_id) 
        references Deliverable;

    alter table RequirementRequest 
        add constraint FK8221A8EC6D4ADE96 
        foreign key (associatedTo_id) 
        references Requirement;

    alter table RequirementRequest 
        add constraint FK8221A8EC12A3E205 
        foreign key (communicatedVia_id) 
        references RequestItem;

    alter table RequirementRole 
        add constraint FKE644AF39E2750694 
        foreign key (assignedTo_id) 
        references Party;

    alter table RequirementRole 
        add constraint FKE644AF397581C2AD 
        foreign key (type_id) 
        references RequirementRoleType;

    alter table RequirementRole 
        add constraint FKE644AF39E364C691 
        foreign key (relatedTo_id) 
        references Requirement;

    alter table RequirementStatus 
        add constraint FK69CC59F57EB200E9 
        foreign key (type_id) 
        references RequirementStatusType;

    alter table Requirement_DesiredFeature 
        add constraint FKA2D3EB8EE8765BB 
        foreign key (specifying_id) 
        references DesiredFeature;

    alter table Requirement_DesiredFeature 
        add constraint FKA2D3EB8E79C7AF1 
        foreign key (Requirement_id) 
        references Requirement;

    alter table Requirement_OrderRequirementCommitment 
        add constraint FK380222C666857D14 
        foreign key (Requirement_id) 
        references Requirement;

    alter table Requirement_OrderRequirementCommitment 
        add constraint FK380222C6470E9A1E 
        foreign key (commitmentOf_id) 
        references OrderRequirementCommitment;

    alter table Requirement_Requirement 
        add constraint FKED554A0766857D14 
        foreign key (Requirement_id) 
        references Requirement;

    alter table Requirement_Requirement 
        add constraint FKED554A077FCEA767 
        foreign key (subRequirements_id) 
        references Requirement;

    alter table Requirement_RequirementBudgetAllocation 
        add constraint FKE1EEEA2CA372E443 
        foreign key (allocatedVia_id) 
        references RequirementBudgetAllocation;

    alter table Requirement_RequirementBudgetAllocation 
        add constraint FKE1EEEA2C66857D14 
        foreign key (Requirement_id) 
        references Requirement;

    alter table Requirement_RequirementStatus 
        add constraint FK6D3424D936076157 
        foreign key (status_id) 
        references RequirementStatus;

    alter table Requirement_RequirementStatus 
        add constraint FK6D3424D966857D14 
        foreign key (Requirement_id) 
        references Requirement;

    alter table RespondingParty 
        add constraint FKE3718399C9BC972C 
        foreign key (contactMechanism_id) 
        references ContactMechanism;

    alter table RespondingParty 
        add constraint FKE371839965AFBB57 
        foreign key (party_id) 
        references Party;

    alter table ResponsibilityType_ValidResponsibility 
        add constraint FK925818D37D6A04FD 
        foreign key (ResponsibilityType_id) 
        references ResponsibilityType;

    alter table ResponsibilityType_ValidResponsibility 
        add constraint FK925818D3D4C9B38E 
        foreign key (usedToDefine_id) 
        references ValidResponsibility;

    alter table SalaryStep 
        add constraint FK9522BD611009533 
        foreign key (grade_id) 
        references PayGrade;

    alter table SalaryStep_PayHistory 
        add constraint FKE5BA2F565FDADD3 
        foreign key (history_id) 
        references PayHistory;

    alter table SalaryStep_PayHistory 
        add constraint FKE5BA2F5E0C2507B 
        foreign key (SalaryStep_id) 
        references SalaryStep;

    alter table SalaryStep_PositionTypeRate 
        add constraint FK1012C8ECCF0A634E 
        foreign key (positionTypeRates_id) 
        references PositionTypeRate;

    alter table SalaryStep_PositionTypeRate 
        add constraint FK1012C8ECE0C2507B 
        foreign key (SalaryStep_id) 
        references SalaryStep;

    alter table SalesTaxLookup 
        add constraint FKAB6AB979A4389CB8 
        foreign key (specifiedFor_id) 
        references ProductCategory;

    alter table SalesTaxLookup 
        add constraint FKAB6AB9799C7A0D6A 
        foreign key (salesTaxLookupFor_id) 
        references GeographicBoundary;

    alter table Shipment 
        add constraint FKE513D5BAECE8D5E 
        foreign key (shippedToContactMechanism_id) 
        references ContactMechanism;

    alter table Shipment 
        add constraint FKE513D5BA77F9B065 
        foreign key (shippedToParty_id) 
        references Party;

    alter table Shipment 
        add constraint FKE513D5BAAD42BA53 
        foreign key (inquiredAboutVia_id) 
        references ContactMechanism;

    alter table Shipment 
        add constraint FKE513D5BAAD3F508F 
        foreign key (shippedFromContactMechanism_id) 
        references ContactMechanism;

    alter table Shipment 
        add constraint FKE513D5BA6D4301D4 
        foreign key (shippedFromParty_id) 
        references Party;

    alter table ShipmentItem 
        add constraint FKE78157ED9CB50DC0 
        foreign key (shipmentOf_id) 
        references Product;

    alter table ShipmentItem_OrderShipment 
        add constraint FK41B3A616F1B60CCF 
        foreign key (shipmentsOf_id) 
        references OrderShipment;

    alter table ShipmentItem_OrderShipment 
        add constraint FK41B3A6163B6A875D 
        foreign key (ShipmentItem_id) 
        references ShipmentItem;

    alter table ShipmentItem_ProductFeature 
        add constraint FK472C15B9EF43ADA 
        foreign key (shippedWith_id) 
        references ProductFeature;

    alter table ShipmentItem_ProductFeature 
        add constraint FK472C15B93B6A875D 
        foreign key (ShipmentItem_id) 
        references ShipmentItem;

    alter table ShipmentItem_ShipmentItem 
        add constraint FKF61872FF22FE0A04 
        foreign key (shipmentItems_id) 
        references ShipmentItem;

    alter table ShipmentItem_ShipmentItem 
        add constraint FKF61872FF3B6A875D 
        foreign key (ShipmentItem_id) 
        references ShipmentItem;

    alter table ShipmentPackage_PackagingContent 
        add constraint FKB3463E49CB6D6F40 
        foreign key (composedOf_id) 
        references PackagingContent;

    alter table ShipmentPackage_PackagingContent 
        add constraint FKB3463E497E41B1E1 
        foreign key (ShipmentPackage_id) 
        references ShipmentPackage;

    alter table ShipmentPackage_ShipmentReceipt 
        add constraint FK26249E0B7E41B1E1 
        foreign key (ShipmentPackage_id) 
        references ShipmentPackage;

    alter table ShipmentPackage_ShipmentReceipt 
        add constraint FK26249E0BA4EFB39F 
        foreign key (consistingOf_id) 
        references ShipmentReceipt;

    alter table ShipmentReceipt 
        add constraint FK47382F1EA875A6AD 
        foreign key (inventoryItem_id) 
        references InventoryItem;

    alter table ShipmentReceipt 
        add constraint FK47382F1E125BBF7F 
        foreign key (orderItem_id) 
        references OrderItem;

    alter table ShipmentReceipt 
        add constraint FK47382F1E7E41B1E1 
        foreign key (shipmentPackage_id) 
        references ShipmentPackage;

    alter table ShipmentReceipt 
        add constraint FK47382F1EF95BC681 
        foreign key (rejectionReason_id) 
        references RejectionReason;

    alter table ShipmentReceipt 
        add constraint FK47382F1ECDF06A74 
        foreign key (good_id) 
        references Product;

    alter table ShipmentReceiptRole 
        add constraint FK835664B465AFBB57 
        foreign key (party_id) 
        references Party;

    alter table ShipmentReceiptRole 
        add constraint FK835664B46A886F35 
        foreign key (type_id) 
        references ShipmentReceiptRoleType;

    alter table ShipmentReceipt_ShipmentReceiptRole 
        add constraint FK829C6613F94A94A1 
        foreign key (ShipmentReceipt_id) 
        references ShipmentReceipt;

    alter table ShipmentReceipt_ShipmentReceiptRole 
        add constraint FK829C6613CF179EF8 
        foreign key (roles_id) 
        references ShipmentReceiptRole;

    alter table ShipmentRouteSegment 
        add constraint FKDF867384B5C7C197 
        foreign key (shippedTo_id) 
        references Facility;

    alter table ShipmentRouteSegment 
        add constraint FKDF8673842929BD61 
        foreign key (shipppedBy_id) 
        references PartyRole;

    alter table ShipmentRouteSegment 
        add constraint FKDF86738428DF06C8 
        foreign key (shippedFrom_id) 
        references Facility;

    alter table ShipmentRouteSegment 
        add constraint FKDF867384D42342DC 
        foreign key (shippedVia_id) 
        references ShipmentMethodType;

    alter table ShipmentRouteSegment 
        add constraint FKDF867384CA1216E6 
        foreign key (shipmentOf_id) 
        references Shipment;

    alter table ShipmentStatus 
        add constraint FK1D99DE4C587F1629 
        foreign key (type_id) 
        references ShipmentStatusType;

    alter table Shipment_ShipmentItem 
        add constraint FK3FD38A528AC2F99D 
        foreign key (Shipment_id) 
        references Shipment;

    alter table Shipment_ShipmentItem 
        add constraint FK3FD38A52249AD26A 
        foreign key (items_id) 
        references ShipmentItem;

    alter table Shipment_ShipmentStatus 
        add constraint FKAA290B718AC2F99D 
        foreign key (Shipment_id) 
        references Shipment;

    alter table Shipment_ShipmentStatus 
        add constraint FKAA290B7198CB27A9 
        foreign key (statuses_id) 
        references ShipmentStatus;

    alter table StandardTimePeriod 
        add constraint FK2DB3D5AB8E0EE3E1 
        foreign key (type_id) 
        references PeriodType;

    alter table SupplierProduct 
        add constraint FK2832C563C7B0AAB0 
        foreign key (validSupplierFor_id) 
        references Product;

    alter table SupplierProduct 
        add constraint FK2832C563E73A77FE 
        foreign key (ratedBy_id) 
        references RatingType;

    alter table SupplierProduct 
        add constraint FK2832C5633ECBBE3B 
        foreign key (suppliedBy_id) 
        references Party;

    alter table SupplierProduct 
        add constraint FK2832C56351A0110B 
        foreign key (furtherDescribedBy_id) 
        references PreferenceType;

    alter table TimeEntry 
        add constraint FK78309D859BA2FAC2 
        foreign key (timeSpendOn_id) 
        references WorkEffort;

    alter table Timesheet 
        add constraint FK7AB5E292F8C1F579 
        foreign key (hoursFor_id) 
        references PartyRole;

    alter table TimesheetRole 
        add constraint FK91253E2812FD7383 
        foreign key (involving_id) 
        references Party;

    alter table TimesheetRole 
        add constraint FK91253E2851C2F713 
        foreign key (type_id) 
        references TimeSheetRoleType;

    alter table Timesheet_TimeEntry 
        add constraint FK4C22EC18AFC536CB 
        foreign key (Timesheet_id) 
        references Timesheet;

    alter table Timesheet_TimeEntry 
        add constraint FK4C22EC1832C27B20 
        foreign key (entries_id) 
        references TimeEntry;

    alter table Timesheet_TimesheetRole 
        add constraint FK6F580B3BAFC536CB 
        foreign key (Timesheet_id) 
        references Timesheet;

    alter table Timesheet_TimesheetRole 
        add constraint FK6F580B3BA9B1F559 
        foreign key (involving_id) 
        references TimesheetRole;

    alter table TransactionDetail 
        add constraint FK6875F8AF3A5D6221 
        foreign key (partOf_id) 
        references AccountingTransaction;

    alter table TransactionDetail 
        add constraint FK6875F8AFC0AF7E45 
        foreign key (allocatedTo_id) 
        references OrganizationGlAccount;

    alter table TransactionDetail 
        add constraint FK6875F8AFCB93229E 
        foreign key (relatedTo_id) 
        references TransactionDetail;

    alter table UnemploymentClaim 
        add constraint FK93F4B3D710DCE83F 
        foreign key (status_id) 
        references UnemploymentClaimStatusType;

    alter table UnemploymentClaim 
        add constraint FK93F4B3D72E16EB4A 
        foreign key (resultingFrom_id) 
        references PartyRelationship;

    alter table UnitOfMeasureConversion 
        add constraint FK3BF093B937BF1FB5 
        foreign key (inUnitOfMeasure) 
        references UnitOfMeasure;

    alter table UnitOfMeasureConversion 
        add constraint FK3BF093B911330608 
        foreign key (fromUom_id) 
        references UnitOfMeasure;

    alter table UnitOfMeasure_UnitOfMeasureConversion 
        add constraint FKC3B1E9BDDB65AE4E 
        foreign key (UnitOfMeasure_id) 
        references UnitOfMeasure;

    alter table UnitOfMeasure_UnitOfMeasureConversion 
        add constraint FKC3B1E9BD761868B 
        foreign key (convertedFrom_id) 
        references UnitOfMeasureConversion;

    alter table UnitOfMeasure_UnitOfMeasureConversion 
        add constraint FKC3B1E9BD9D46859A 
        foreign key (convertedTo_id) 
        references UnitOfMeasureConversion;

    alter table ValidResponsibility 
        add constraint FKEF58C90A80EE4562 
        foreign key (associatedWith_id) 
        references PositionType;

    alter table ValidResponsibility 
        add constraint FKEF58C90ABBCE3025 
        foreign key (definedBy_id) 
        references ResponsibilityType;

    alter table WorkEfforAssociation 
        add constraint FKF3102C2AFC202371 
        foreign key (associatedTo_id) 
        references WorkEffort;

    alter table WorkEfforAssociation 
        add constraint FKF3102C2A9801162 
        foreign key (associatedFrom_id) 
        references WorkEffort;

    alter table WorkEffort 
        add constraint FK28AE1F7D62A06203 
        foreign key (versionOf_id) 
        references WorkEffort;

    alter table WorkEffort 
        add constraint FK28AE1F7D189B0292 
        foreign key (performedAt_id) 
        references Facility;

    alter table WorkEffort 
        add constraint FK28AE1F7DF1547850 
        foreign key (type_id) 
        references WorkEffortType;

    alter table WorkEffortAssignmentRate 
        add constraint FKB1DDA62A8F6A70F3 
        foreign key (rateOf_id) 
        references WorkEffortPartyAssignment;

    alter table WorkEffortAssignmentRate 
        add constraint FKB1DDA62AAA29763B 
        foreign key (rateType_id) 
        references RateType;

    alter table WorkEffortBilling 
        add constraint FKB1A0A43E40D0D581 
        foreign key (percentageOf_id) 
        references WorkEffort;

    alter table WorkEffortInvenotryAssignment 
        add constraint FKA8AD9EF6F1909D1E 
        foreign key (useOf_id) 
        references InventoryItem;

    alter table WorkEffortPartyAssignment 
        add constraint FKE431A516740D2D44 
        foreign key (assignedAt_id) 
        references Facility;

    alter table WorkEffortPartyAssignment 
        add constraint FKE431A5161B26331D 
        foreign key (describedBy_id) 
        references WorkEffortRoleType;

    alter table WorkEffortPartyAssignment 
        add constraint FKE431A516869FFF6F 
        foreign key (assigned_id) 
        references Party;

    alter table WorkEffortPartyAssignment_ShipmentItem 
        add constraint FKF9929076ABD239F4 
        foreign key (WorkEffortPartyAssignment_id) 
        references WorkEffortPartyAssignment;

    alter table WorkEffortPartyAssignment_ShipmentItem 
        add constraint FKF99290767073492F 
        foreign key (billingForShipmentItem_id) 
        references ShipmentItem;

    alter table WorkEffortSkill 
        add constraint FKD45EE0D496B35AD0 
        foreign key (skillType_id) 
        references SkillType;

    alter table WorkEffortStatus 
        add constraint FKB7F889CF66673004 
        foreign key (type_id) 
        references WorkEffortStatusType;

    alter table WorkEffortType 
        add constraint FKDD901C5794EC8828 
        foreign key (usedToProduceProduct_id) 
        references Product;

    alter table WorkEffortType 
        add constraint FKDD901C57F0B57FD6 
        foreign key (usedToProduceDeliverable_id) 
        references DeliverableType;

    alter table WorkEffortType_WorkEffortGoodStandard 
        add constraint FKFA8AE79F2BE4F273 
        foreign key (WorkEffortType_id) 
        references WorkEffortType;

    alter table WorkEffortType_WorkEffortGoodStandard 
        add constraint FKFA8AE79FAEF747E7 
        foreign key (goodStandardNeeds_id) 
        references WorkEffortGoodStandard;

    alter table WorkEffortType_WorkEffortType 
        add constraint FK2343553FBECD64B4 
        foreign key (breaksDownInto_id) 
        references WorkEffortType;

    alter table WorkEffortType_WorkEffortType 
        add constraint FK2343553F5A2B6064 
        foreign key (dependsOn_id) 
        references WorkEffortType;

    alter table WorkEffortType_WorkEffortType 
        add constraint FK2343553F2BE4F273 
        foreign key (WorkEffortType_id) 
        references WorkEffortType;

    alter table WorkEffort_InventoryItem 
        add constraint FK782ABD2DE34DFE9C 
        foreign key (inventoryProduced_id) 
        references InventoryItem;

    alter table WorkEffort_InventoryItem 
        add constraint FK782ABD2D4C3DA019 
        foreign key (deliverableProduced_id) 
        references InventoryItem;

    alter table WorkEffort_InventoryItem 
        add constraint FK782ABD2DBFB3ACB5 
        foreign key (WorkEffort_id) 
        references WorkEffort;

    alter table WorkEffort_OrderItem 
        add constraint FK13D5E11FF4C38923 
        foreign key (fullfillsWorkOderItems_id) 
        references OrderItem;

    alter table WorkEffort_OrderItem 
        add constraint FK13D5E11FBFB3ACB5 
        foreign key (WorkEffort_id) 
        references WorkEffort;

    alter table WorkEffort_Requirement 
        add constraint FK3B70AE619A792BC7 
        foreign key (fulfillsRequirement_id) 
        references Requirement;

    alter table WorkEffort_Requirement 
        add constraint FK3B70AE61BFB3ACB5 
        foreign key (WorkEffort_id) 
        references WorkEffort;

    alter table WorkEffort_TimeEntry 
        add constraint FK2BF03F43941AEE8C 
        foreign key (trackedVia_id) 
        references TimeEntry;

    alter table WorkEffort_TimeEntry 
        add constraint FK2BF03F43BFB3ACB5 
        foreign key (WorkEffort_id) 
        references WorkEffort;

    alter table WorkEffort_WorkEffortInvenotryAssignment 
        add constraint FK92D8F5B4A5AA3211 
        foreign key (inNeedOf_id) 
        references WorkEffortInvenotryAssignment;

    alter table WorkEffort_WorkEffortInvenotryAssignment 
        add constraint FK92D8F5B4BFB3ACB5 
        foreign key (WorkEffort_id) 
        references WorkEffort;

    alter table WorkEffort_WorkEffortPartyAssignment 
        add constraint FKECA20AD43631B38A 
        foreign key (assignedVia_id) 
        references WorkEffortPartyAssignment;

    alter table WorkEffort_WorkEffortPartyAssignment 
        add constraint FKECA20AD4BFB3ACB5 
        foreign key (WorkEffort_id) 
        references WorkEffort;

    create sequence hibernate_sequence;
