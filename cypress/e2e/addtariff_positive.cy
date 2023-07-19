const AddTarifPlanPage = 'https://demo.guru99.com/telecom/addtariffplans.php';
const MAX_length1= 12345;
const MAX_length2= 123;

it("UI elements check", () => {
      cy.visit(AddTarifPlanPage);
    cy.get("header.align-center")
      .find("h1")
      .should("have.css", "text-align", "center")
      .should("have.text", "Add Tariff Plans")
      .should("have.css", "color", "rgb(37, 162, 195)");
      cy.log('Header checked');

        cy.get("input#rental1")
      .should("be.visible")
      .and("have.attr", "maxlength", "5")
      .and("have.attr", "placeholder", "Monthly Rental")
       cy.log('rental input checked');

    cy.get("input#local_minutes")
      .should("be.visible")
      .and("have.attr", "maxlength", "5")
      .and("have.attr", "placeholder", "Free Local Minutes")
       cy.log('minutes input checked');

    cy.get("input#inter_minutes")
      .should("be.visible")
      .and("have.attr", "maxlength", "5")
      .and("have.attr", "placeholder", "Free International Minutes")
      cy.log('inter minutes input checked');

    cy.get("input#sms_pack")
      .should("be.visible")
      .and("have.attr", "maxlength", "5")
      .and("have.attr", "placeholder", "Free SMS Pack")
      cy.log('sms_pack input checked');

    cy.get("input#minutes_charges")
      .should("be.visible")
      .and("have.attr", "maxlength", "3")
      .and("have.attr", "placeholder", "Local Per Minutes Charges")
        cy.log('minutes_charges input checked');

    cy.get("input#inter_charges")
      .should("be.visible")
      .and("have.attr", "maxlength", "3")
      .and("have.attr", "placeholder", "Inter. Per Minutes Charges")
      cy.log('inter_charges input checked');

    cy.get("input#sms_charges")
      .should("be.visible")
      .and("have.attr", "maxlength", "3")
      .and("have.attr", "placeholder", "SMS Per Charges")
      cy.log('sms_charges input checked');

    cy.get('input[type="submit"]')
      .should("be.visible")
      .should("have.css", "background-color", "rgb(246, 117, 94)")
      .should("have.css", "color", "rgb(255, 255, 255)")
      .should("have.css", "text-align", "center")
         cy.log('submit button checked');

    cy.get('input[type="reset"]')
      .should("be.visible")
      .should("be.visible")
      .should("have.css", "background-color", "rgba(0, 0, 0, 0)")
      .should("have.css", "color", "rgb(114, 122, 130)")
      .should("have.css", "text-align", "center")
          cy.log('reset button checked');
  });

	    it('Add plan with valid values', () => {
    cy.log('Tariff plan can be added with valid data')
    cy.visit(AddTarifPlanPage);
    cy.get ('#rental1').type(MAX_length1);
    cy.get ('#local_minutes').type(MAX_length1);
    cy.get ('#inter_minutes').type(MAX_length1);
    cy.get ('#sms_pack').type(MAX_length1);
    cy.get ('#minutes_charges').type(MAX_length2);
    cy.get ('#inter_charges').type(MAX_length1);
    cy.get ('#sms_charges').type(MAX_length1);
    cy.get('[type="submit"]').click();
  });
 it('Reset button is working', () => {
    cy.log('Reset button functionality')

    cy.visit(AddTarifPlanPage); //BEFOR EACH
    cy.get ('#rental1').type(MAX_length1);
    cy.get ('#local_minutes').type(MAX_length1);
    cy.get ('#inter_minutes').type(MAX_length1);
    cy.get ('#sms_pack').type(MAX_length1);
    cy.get ('#minutes_charges').type(MAX_length2);
    cy.get ('#inter_charges').type(MAX_length1);
    cy.get ('#sms_charges').type(MAX_length1);
    cy.get('[type="reset"]').click();
    cy.get('[type="submit"]').click();

    // cy.url()
  //  .should('not.contain', 'Congratulation you add Tariff Plan');


  });




	  
    
  
    
    
    

