package tcc_salu_iara

class Aluno {
	
	String nome
	String sobreNome
	String email
	String senha
	
	static hasMany = [eventos: Evento]
	
    static constraints = {
		nome nullable: false, blank: false
		sobreNome nullable: false, blank: false
		email nullable: false, blank: false, email: true 
		senha nullable: false, blank: false
    }

}
