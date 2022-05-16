const express = require("express");
const sqlite3 = require("sqlite3");

const router = express.Router()

const database = new sqlite3.Database("schedule");

const schema = {
    fullName: "",
    registrationNumber: ""
};

router.post("/", (req, res, next) => {
    schema.fullName = req.query.fullName;
    schema.registrationNumber = req.query.registrationNumber;
    res.status(200).send(schema);
})

router.get("/", (req, res, next) => {
    const query = `
        select semaine.jour, periode.debut, periode.fin, niveau.nomNiveau, filiere.nomFiliere, ue.intitule, salle.nomSalle, enseignant.nomEnseignant 
        from seance
        inner join semaine         
            on seance.codeSemaine = semaine.codeSemaine       
        inner join periode         
        on seance.codePeriode = periode.codePeriode      
        inner join ue          
        on seance.codeUE = ue.codeUE      
        inner join salle          
        on salle.codeSalle = seance.codeSalle       
        inner join niveau          
        on niveau.codeNiveau = ue.codeNiveau      
        inner join filiere         
        on filiere.codeFiliere = ue.codeFiliere      
        inner join enseignant          
        on enseignant.matricule = ue.matricule 
        where enseignant.nomEnseignant = "${schema.fullName}" and enseignant.matricule = "${schema.registrationNumber}"
        order by seance.codeSemaine, seance.codePeriode;
    `
    database.all(query, (err, result) => {
        if(err){
            res.status(404).send("not found");
        }
        else {
            res.send(result);
        }
    });
});

module.exports = router;