const AddTarifPlanPage = 'https://demo.guru99.com/telecom/addtariffplans.php';
const Valid_value_max_lengh1 = 100;
const Valid_value_max_lengh2 = 1000;
const Invalid_value = ['тест', 'test', '1 1', '1-1', '1!@.', " "];


describe('Adding plan(-)', () => {
  it('Tariff plan should not be added', () => {
  
    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Invalid_value[0]);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();
    //cy.url()  !add and catch alerts 
 //   .should('contain', BASEURL);

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Invalid_value[1]);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();
   
 cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Invalid_value[2]);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Invalid_value[3]);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Invalid_value[4]);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();
   
 cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Invalid_value[5]);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

 cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Invalid_value[0]);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Invalid_value[1]);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Invalid_value[2]);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(BASEURL);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Invalid_value[3]);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

        cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Invalid_value[4]);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Invalid_value[5]);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();
    
     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Invalid_value[0]);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Invalid_value[1]);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

         cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Invalid_value[2]);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();


         cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Invalid_value[3]);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

         cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Invalid_value[4]);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

       cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Invalid_value[5]);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

        cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Invalid_value[0]);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Invalid_value[1]);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Invalid_value[2]);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Invalid_value[3]);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Invalid_value[4]);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Invalid_value[5]);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

         cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Invalid_value[0])
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Invalid_value[1])
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Invalid_value[2])
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Invalid_value[3])
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Invalid_value[4])
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

      cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Invalid_value[5])
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

        cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Invalid_value[0])
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();


  cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Invalid_value[1])
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Invalid_value[2])
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Invalid_value[3])
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Invalid_value[4])
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Invalid_value[5])
    cy.get ('#sms_charges').type(Valid_value_max_lengh2)
    cy.get('[type="submit"]').click();

        cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Invalid_value[0])
    cy.get('[type="submit"]').click();

     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Invalid_value[1])
    cy.get('[type="submit"]').click();

     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Invalid_value[2])
    cy.get('[type="submit"]').click();

     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Invalid_value[3])
    cy.get('[type="submit"]').click();

     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Invalid_value[4])
    cy.get('[type="submit"]').click();

     cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(Valid_value_max_lengh2);               
    cy.get ('#local_minutes').type(Valid_value_max_lengh2);
    cy.get ('#inter_minutes').type(Valid_value_max_lengh2);
    cy.get ('#sms_pack').type(Valid_value_max_lengh2);
    cy.get ('#minutes_charges').type(Valid_value_max_lengh2)
    cy.get ('#inter_charges').type(Valid_value_max_lengh2)
    cy.get ('#sms_charges').type(Invalid_value[5])
    cy.get('[type="submit"]').click();
  });    
     });

