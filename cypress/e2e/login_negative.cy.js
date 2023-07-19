const LoginPage = 'https://demo.guru99.com/Agile_Project/Agi_V1/index.php';


describe('Guru99 login page invalid user', () =>{
	
	it('Login with empty fields', () => {		
		cy.visit(LoginPage);
		cy.get('input[name="uid"]')
			.should('have.value', '');
		cy.get('input[name="password"]')
			.should('have.value', '');	
		cy.get('[name="btnLogin"]')
			.click();
		cy.on('window:alert', (text) => {
      		expect(text).to.contains('User or Password is not valid');
      	});		
	});

	it('Login with valid ID and empty password', () => {		
		cy.visit(LoginPage);
		cy.get('input[name="uid"]')
			.type('1303');
		cy.get('input[name="password"]')
			.should('have.value', '');	
		cy.get('[name="btnLogin"]')
			.click();
		cy.on('window:alert', (text) => {
      		expect(text).to.contains('User or Password is not valid');
      	});		
	});

	it('Login with valid ID and invalid password', () => {		
		cy.visit(LoginPage);
		cy.get('input[name="uid"]')
			.type('1303');
		cy.get('input[name="password"]')
			.type('Guru98');
		cy.get('[name="btnLogin"]')
			.click();
		cy.on('window:alert', (text) => {
            expect(text).to.eq('User or Password is not valid');
        });
        cy.on('window:alert', (text) => {
      		expect(text).to.contains('User or Password is not valid');
      	});		
	});

	it('Login with invalid ID and valid password', () => {		
		cy.visit(LoginPage);
		cy.get('input[name="uid"]')
			.type('1304');
		cy.get('input[name="password"]')
			.type('Guru99');
		cy.get('[name="btnLogin"]')
			.click();
		cy.on('window:alert', (text) => {
            expect(text).to.eq('User or Password is not valid');
        });
        cy.on('window:alert', (text) => {
      		expect(text).to.contains('User or Password is not valid');
      	});		
	});
})