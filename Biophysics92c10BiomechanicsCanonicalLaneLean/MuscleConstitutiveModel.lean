import canonicalLaneMathlib.AdmissibleClass
import Biophysics92c10Biomechanics.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10Biomechanics

structure MuscleConstitutivePackage where
  muscleType : Prop
  activationDynamics : Prop
  forceVelocityRelation : Prop
  sarcomereStructure : Prop

structure MuscleConstitutiveEvidence (M : MuscleConstitutivePackage) where
  muscleTypeClosed : M.muscleType
  activationDynamicsClosed : M.activationDynamics
  forceVelocityRelationClosed : M.forceVelocityRelation
  sarcomereStructureClosed : M.sarcomereStructure

def MuscleConstitutiveClosed (M : MuscleConstitutivePackage) : Prop :=
  M.muscleType ∧ M.activationDynamics ∧ M.forceVelocityRelation ∧ M.sarcomereStructure

theorem muscle_constitutive_closed_from_evidence (M : MuscleConstitutivePackage)
    (E : MuscleConstitutiveEvidence M) : MuscleConstitutiveClosed M := by
  exact And.intro E.muscleTypeClosed
    (And.intro E.activationDynamicsClosed
      (And.intro E.forceVelocityRelationClosed E.sarcomereStructureClosed))

end Biophysics92c10Biomechanics
end HautevilleHouse