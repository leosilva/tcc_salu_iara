def createClos

def isDirEmpty = { dirName ->
	def dir = new File(dirName)
	dir.exists() && dir.directory && (dir.list() as List).empty
}

// Define closure
createClos = {
	println "--------------------------------------------------";
	println "Dir ${it.canonicalPath}";
	if (!isDirEmpty(it.canonicalPath)) {
		it.eachDir( createClos );
	} else {
		println "Criou arquivo? " + new File("$it.canonicalPath/.gitignore").createNewFile()
	}
}

// Apply closure
createClos( new File("/Users/leosilva/Documents/Ensino/Disciplinas/2015.1/TCC/Salu_Iara/tcc_salu_iara") )