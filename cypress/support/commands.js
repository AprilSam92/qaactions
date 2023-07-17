 Cypress.Commands.add('fillFormWithValidData', () => {
    cy.fixture('validCustomer.json').then((validData) => {
      cy.get(':nth-child(1) > label').click();
      cy.get('#fname').clear().type(validData.firstName);
      cy.get('#lname').clear().type(validData.lastName);
      cy.get('#email').clear().type(validData.email);
      cy.get('textarea[name="addr"]').clear().type(validData.address);
      cy.get('#telephoneno').clear().type(validData.mobileNumber);
    });
  });

  Cypress.Commands.add('fillFormWithValidDataPending', () => {
    cy.fixture('validCustomer.json').then((validData) => {
      cy.get(':nth-child(2) > label').click();
      cy.get('#fname').clear().type(validData.firstName);
      cy.get('#lname').clear().type(validData.lastName);
      cy.get('#email').clear().type(validData.email);
      cy.get('textarea[name="addr"]').clear().type(validData.address);
      cy.get('#telephoneno').clear().type(validData.mobileNumber);
    });
  });



Cypress.Commands.add('correctFormSubmitting', (data) =>{
    cy.enterValidData(data);
    cy.get('input[type="submit"]')
      .click();
    let customerID;

    cy.get('#main > div > div > table > tbody > tr:nth-child(1) > td:nth-child(2) > h3')
      .invoke('text')
      .then((text) => {
        customerID = text;
        cy.log(customerID);
      cy.log('Check if user exist')
        cy.visit('https://demo.guru99.com/telecom/billing.php')
        cy.get('#customer_id')
          .type(customerID)
        cy.get('input[name="submit"]')
          .click()          
          cy.get('#main > div > h3', { timeout: 10000 })
            .invoke('text')
            .should('contain', customerID)
            .and('contain', data.firstname)
      
      cy.log('Check if user active')
      if (data.status == 'done') {
        var status = 'ACTIVE'
      } else if (data.status == 'pending') {
        var status = 'INACTIVE'
      }

      cy.visit('https://demo.guru99.com/telecom/assigntariffplantocustomer.php')
      cy.get('#customer_id')
        .type(customerID)
      cy.get('input[type="submit"]')
        .click()
      cy.get('#main > div > p > font')
        .invoke('text')
        .should('eq', status)

      })
}); 
