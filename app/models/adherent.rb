class Adherent < ApplicationRecord
    validates :status, inclusion: { in: ['ENSEIGNANT','ETUDIANT'] }

    STATUS_OPTIONS = [
        ['ENSEIGNANT'],
        ['ETUDIANT']
    ]
    def to_s
        "ID : #{self.id} - Nom : "+self.nom+" - Prenom : "+self.prenom+" - Statut : "+self.status
    end
end
