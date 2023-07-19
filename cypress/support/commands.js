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

Cypress.Commands.add('payNumberOfGoods', (number) =>{
  cy.visit('https://demo.guru99.com/payment-gateway/index.php')
  cy.get('#three > div > form > div > div:nth-child(2) > h3')
    .invoke('text')
    .then((text) => {
      const price = text.slice(8);
      cy.log(price)
      cy.get('select[name="quantity"]')
        .select(number-1)
      cy.get('input[value="Buy Now"]')
        .click()
      cy.url()
        .should('eq', 'https://demo.guru99.com/payment-gateway/process_purchasetoy.php')
      cy.get('#three > div > form > div.row > div > font:nth-child(2)')
          .invoke('text')
        .then((text) => {
          let total_amount = Number(text.slice(2, -3))
          cy.log(total_amount)
          expect(total_amount).to.be.equal(number*price)
        })  
    })
});


Cypress.Commands.add('inputCardData', (data) =>{
  cy.log('input card number')
  cy.get('input[name="card_nmuber"]')
    .clear()
    .type(data.Card_Number)
    .should('have.value', data.Card_Number)

  cy.log('select Expiration month')
  cy.get('select[id="month"]')
    .select(data.Expiration_Month)
    .should('have.value', Number(data.Expiration_Month))

  cy.log('select Expiration year')
  cy.get('select[id="year"]')
    .select(data.Expiration_Year)
    .should('have.value', Number(data.Expiration_Year))

  cy.log('input CVV code')
  cy.get('input[name="cvv_code"]')
    .clear()
    .type(data.CVV)
    .should('have.value', data.CVV);
});

Cypress.Commands.add('paymentProcess', (data, quantity) =>{
  cy.payNumberOfGoods(quantity)
  cy.inputCardData(data)

  cy.log('Get total amount')
  cy.get('#three > div > form > div.row > div > font:nth-child(2)')
    .should('have.css', 'color', 'rgb(255, 0, 0)')
      .invoke('text')
    .then((text) => {
      let total_amount = Number(text.slice(2, -3))
      let Balance = Number(data.Balance.slice(0, -1))
      cy.get('input[name="submit"]')
        .click()
      cy.log(total_amount, Balance)
      if(total_amount <= Balance) {
        cy.url()
          .should('contains', 'https://demo.guru99.com/payment-gateway/genearte_orderid.php')         
        cy.get('#three')
          .should('contain', 'Payment successfull!')
          .should('contain', 'Order ID')}
      else {
        cy.get('body')
          .should('contain', 'Payment denied')
      }
    })
});

Cypress.Commands.add('negativeFieldValidation', (selector, data, messageID, message) =>{
  cy.get(selector)
    .clear()
    .type(data)
  cy.get(messageID)
    .should('be.visible')
    .should('have.text', message)
});

Cypress.Commands.add('emptyFieldValidation', (selector, messageID, message) =>{
  cy.get(selector)
    .clear()
  cy.get(messageID)
    .should('be.visible')
    .should('have.text', message)
});

      
Cypress.Commands.add('checkOverlength', (selector, data, maxlength) =>{
  cy.get(selector)
    .type(data)
    .should('have.value', data.slice(0, maxlength))
})
