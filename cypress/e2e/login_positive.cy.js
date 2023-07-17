	
Cypress.config('defaultCommandTimeout', 100000);

describe('Login page UI & valid input', () =>{

it(' Login page UI check', () => {
		cy.visit('https://demo.guru99.com/Agile_Project/Agi_V1/index.php');
		cy.log('check Guru99 Bank header')
		cy.get('h2')
			.should('contain', 'Guru99 Bank')
			.should('be.visible')
			.should('have.css', 'font-size', '27px')
			.should('have.css', 'font-weight', '700')
			.should('have.css', 'padding', '10px');
		cy.get('tr')
			.should('contain', 'UserID')
			.find('input[name="uid"]')
			.should('exist')
		cy.get('tr')
			.should('contain', 'Password')
			.find('input[name="password"]')
			.should('exist');
		cy.get('h4')
			.should('contain', 'Access')
			.and('be.visible')
			.and('have.css', 'font-size', '18px')
			.and('have.css', 'font-weight', '700')
			.and('have.css', 'padding', '10px');
		cy.get('body')
			.should('contain', 'UserID : 1303')
			.should('be.visible');
		cy.get('body')
			.should('contain', 'Password : Guru99')
			.should('be.visible');

	});



	it('Valid user', () => {
		cy.log('Login GURU99 page');
		cy.visit('https://demo.guru99.com/Agile_Project/Agi_V1/index.php');
		cy.get('input[name="uid"]')
			.should('be.visible')
			.and('have.css', 'border-color', 'rgb(128, 128, 128)')
			.and('have.css', 'border-radius', '10px')
			.and('have.css', 'FONT-FAMILY', 'Tahoma, sans-serif, Verdana')
			.and('have.css', 'FONT-SIZE', '16px')
			.and('have.css', 'background-color', 'rgb(248, 248, 255)')
			.type('1303');

		cy.get('input[name="password"]')
			.should('be.visible')
			.and('have.css', 'border-color', 'rgb(128, 128, 128)')
			.and('have.css', 'border-radius', '10px')
			.and('have.css', 'FONT-FAMILY', 'Tahoma, sans-serif, Verdana')
			.and('have.css', 'FONT-SIZE', '16px')
			.and('have.css', 'background-color', 'rgb(248, 248, 255)')
			.type('Guru99');	

		cy.get('[name="btnLogin"]')
			.should('be.visible')
			.and('have.value', 'LOGIN')
			.and('have.css', 'border-color', 'rgb(128, 128, 128)')
			.and('have.css', 'border-radius', '10px')
			.and('have.css', 'FONT-FAMILY', 'Tahoma, sans-serif, Verdana')
			.and('have.css', 'FONT-SIZE', '16px')
			.and('have.css', 'background-color', 'rgb(248, 248, 255)')
			.click();

		cy.url()
			.should('be.equal', 'https://demo.guru99.com/Agile_Project/Agi_V1/customer/Customerhomepage.php');		
		cy.get('[href="Logout.php"]')
			.click();
		cy.url()
			.should('be.equal', 'https://demo.guru99.com/Agile_Project/Agi_V1/index.php');				
		});


	it('Reset button func', () => {
		cy.log('Login GURU99 page');
		cy.visit('https://demo.guru99.com/Agile_Project/Agi_V1/index.php');
		cy.get('input[name="uid"]')
			.should('be.visible')
			.type('1303');
		cy.get('input[name="password"]')
			.type('Guru99');		
		cy.get('[name="btnReset"]')
			.and('have.css', 'border-color', 'rgb(128, 128, 128)')
			.and('have.css', 'border-radius', '10px')
			.and('have.css', 'FONT-FAMILY', 'Tahoma, sans-serif, Verdana')
			.and('have.css', 'FONT-SIZE', '16px')
			.and('have.css', 'background-color', 'rgb(248, 248, 255)')
			.click()
		cy.get('input[name="uid"]')
			.should('have.value', '');
		cy.get('input[name="password"]')
			.should('have.value', '');	
		const stub = cy.stub(); 
      	cy.on ('window:alert', stub);
		cy.get('[name="btnLogin"]')
			.click()
			.then(() => {
				cy.on('window:alert', (text) => {
					expect(stub).to.be.called
		      		expect(stub.getCall(0)).to.be.calledWith('User or Password is not valid');
		      	});		
			});
	});
})