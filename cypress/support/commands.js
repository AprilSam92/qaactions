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
