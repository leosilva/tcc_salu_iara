package tcc_salu_iara

class Evento {

	String nome
	String local
	Date data
	
	static hasMany = [alunos: Aluno]
	static belongsTo = [aluno: Aluno]
	
    static constraints = {
		nome nullable: false, blank: false
		local nullable: false, blank: false
		data nullable: false, blank: false
    }

}
