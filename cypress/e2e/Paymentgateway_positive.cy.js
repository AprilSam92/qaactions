
const PurchasePage = 'https://demo.guru99.com/payment-gateway/process_purchasetoy.php';
const card_data = require('../../fixtures/Cards_info.json');


describe('Payment Gateway UI and positive case', () =>{
	it('Page elements styles', () => {
		cy.payNumberOfGoods(9)
		cy.url()
			.should('eq', PurchasePage)

		cy.log('check UI header and button')	
		cy.get('input[name="card_nmuber"]')
			.should('be.visible')
			.and('have.attr', 'placeholder', 'Enter Your Card Number')
			.and('have.css', 'background-color', 'rgb(108, 192, 145)')
			.and('have.css', 'border-radius', '10px');
		cy.get('select[id="month"]')
			.should('be.visible')
			.and('have.css', 'background-color', 'rgb(108, 192, 145)')
			.and('have.css', 'border-radius', '10px');
		cy.get('select[id="year"]')
			.should('be.visible')
			.and('have.css', 'background-color', 'rgb(108, 192, 145)')
			.and('have.css', 'border-radius', '10px');
		cy.get('input[name="cvv_code"]')
			.should('be.visible')
			.and('have.attr', 'placeholder', 'CVV Code')
			.and('have.css', 'background-color', 'rgb(108, 192, 145)')
			.and('have.css', 'border-radius', '10px');
		
		cy.log('check UI header and pay button')
		cy.get('#three > div > form > div.row > div > font:nth-child(2)')
				.should('have.css', 'color', 'rgb(255, 0, 0)')
		  		.invoke('text')
				.then((text) => {
					let total_amount = text.slice(1)
					cy.get('input[name="submit"]')
						.should('be.visible')
						.and('have.value', `Pay ${total_amount}`)
						.and('have.css', 'margin', '0px')
						.and('have.css', 'color', 'rgb(255, 255, 255)')
						.and('have.css', 'background-color', 'rgb(108, 192, 145)')
						.and('have.css', 'font-size', '19.2px')
						.and('have.css', 'border-radius', '30px')
				})

		cy.log('Payment Process title style')
		cy.get('#three > div > header > h2') 
			.should('have.text', 'Payment Process')
			.and('have.css', 'color', 'rgb(85, 85, 85)')
			.and('have.css', 'line-height', '66px')
			.and('have.css', 'font-size', '44px')


		cy.log('Card data textfields')
		cy.get('[class="row uniform"]')
			.find('h4')
			.should('contain', 'We accept')
			.and('contain', 'Card Number')
			.and('contain', 'Expiration Month')
			.and('contain', 'Expiration Year')
			.and('contain', 'CVV Code')
			.and('be.visible')
			.and('have.css', 'margin', '0px')
			.and('have.css', 'color', 'rgb(85, 85, 85)')
			.and('have.css', 'font-size', '24px')
			.and('have.css', 'line-height', '36px');

		cy.log('Check acceptable biling systems images')
		cy.get('[class="row uniform"]')
			cy.get('img[src="images/visa.png"]')
				.should('be.visible')
			cy.get('img[src="images/mastercard.png"]')
				.should('be.visible')
			cy.get('img[src="images/american.png"]')
				.should('be.visible')
			cy.get('img[src="images/discover.png"]')
				.should('be.visible')
	}); 

	it('Pay with valid card data and sufficient balance', () => {
		cy.log('Check mastercard valid input')
		cy.paymentProcess(card_data.mastercard, 4)	

		cy.log('Check Discover valid input')
		cy.paymentProcess(card_data.Discover, 2)	

		cy.log('Check Visa valid input')
		cy.paymentProcess(card_data.Visa, 3)	

		cy.log('Check AmEx valid input')
		cy.paymentProcess(card_data.AmEx, 1)	
	})

});