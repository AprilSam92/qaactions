const ADDCustomerPage = 'https://demo.guru99.com/telecom/addcustomer.php';
const invalid_values = [" ", "123", "///", "соня", "n@.ru", "abcd.com", "hi"];


describe('invalid data into textfields', () => {
  beforeEach(() => {
    cy.visit(ADDCustomerPage);
  });

  it('Firstname error messages', () => {
    cy.fillFormWithValidData();
    cy.get('#fname').clear()
    cy.get('label#message')
      .should('be.visible')
      .and('have.text', 'Customer name ' + 'must not be blank');
    cy.get('#fname')
      .type(invalid_values[0]);
    cy.get('label#message')
      .should('be.visible')
      .and('have.text', 'First character can not have space');
    cy.get('#main input[type=submit]').click();
    cy.get('#fname').clear()
      .type(invalid_values[1]);
    cy.get('label#message')
      .should('have.text', 'Numbers are not allowed');
    cy.get('#main input[type=submit]').click();
    cy.get('#fname').clear()
      .type(invalid_values[2]);
    cy.get('label#message').should('have.text', 'Characters are not allowed');
    cy.get('#main input[type=submit]').click();
    cy.get('#fname').clear()
      .type(invalid_values[3]);
    cy.get('label#message').should('have.text', 'only english letters allowed');
    cy.get('#main input[type=submit]').click();
  });

  it('Lastname error messages', () => {
    cy.fillFormWithValidData();
    cy.get('#lname').clear();
    cy.get('label#message50')
      .should('be.visible')
      .and('have.text', 'Customer name ' + 'must not be blank');
    cy.get('#lname').type(invalid_values[0]);
    cy.get('label#message50')
      .should('have.text', 'First character can not have space');
    cy.get('#main input[type=submit]').click();
    cy.get('#lname').clear()
      .type(invalid_values[1]);
    cy.get('label#message50')
      .should('have.text', 'Numbers are not allowed');
    cy.get('#main input[type=submit]').click();
    cy.get('#lname').clear()
      .type(invalid_values[2]);
    cy.get('label#message50')
      .should('have.text', 'Special characters are not allowed');
    cy.get('#main input[type=submit]').click();
    cy.get('#lname').clear()
      .type(invalid_values[3]);
    cy.get('label#message50')
      .should('have.text', 'only english letters allowed');
    cy.get('#main input[type=submit]').click();
  });

  it('Email error messages checking', () => {
    cy.fillFormWithValidData();
    cy.get('#email').clear();
    cy.get('label#message9')
      .should('be.visible')
      .and('have.text', 'Email-ID ' + 'must not be blank');
    cy.get('#email').type(invalid_values[4]);
    cy.get('label#message9')
      .should('have.text', 'Email-ID is not valid');
    cy.get('#main input[type=submit]').click();
    cy.get('#email').clear().type(invalid_values[5]);
    cy.get('label#message9')
      .should('have.text', 'Email-ID is not valid');
    cy.get('#main input[type=submit]').click();
    cy.get('#email').clear()
  });

  it('Address error messages', () => {
    cy.fillFormWithValidData();
    cy.get('textarea[name="addr"]').clear();
    cy.get('label#message3')
      .should('be.visible')
      .and('have.text', 'Address Field ' + 'must not be blank');
    cy.get('textarea[name="addr"]').type(invalid_values[0]);
    cy.get('label#message3')
      .should('have.text', 'First character can not have space');
    cy.get('#main input[type=submit]').click();
    cy.get('textarea[name="addr"]').clear().type(invalid_values[2]);
    cy.get('label#message3')
      .should('be.hidden', 'Special characters are not allowed');
    cy.get('#main input[type=submit]').click();
    cy.get('textarea[name="addr"]').clear()
    
  });
  
  it('Mobile number error messages', () => {
    cy.fillFormWithValidData();
    cy.get('#telephoneno').clear();
    cy.get('label#message7')
      .should('be.visible')
      .and('have.text', 'Mobile no ' + 'must not be blank');
    cy.get('#telephoneno').type(invalid_values[0]);
    cy.get('label#message7')
      .should('have.text', 'First character can not have space');
    cy.get('#main input[type=submit]').click();
    cy.get('#telephoneno').clear().type(invalid_values[2]);
    cy.get('label#message7')
      .should('have.text', 'Special characters are not allowed');
    cy.get('#main input[type=submit]').click();
    cy.get('#telephoneno').clear()
    cy.get('#telephoneno').type(invalid_values[6]);
    cy.get('label#message7')
      .should('have.text', 'Characters are not allowed');
    cy.get('#main input[type=submit]').click();
    cy.get('#telephoneno').clear()
  });

});