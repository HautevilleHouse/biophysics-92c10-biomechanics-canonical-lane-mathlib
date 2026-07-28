import Biophysics92c10BiomechanicsCanonicalLaneLean.TissueConstitutiveModel

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure MuscleActivationPackage {T : TissueConstitutivePackage} where
  activationDynamics : Prop
  forceLengthRelation : Prop
  forceVelocityRelation : Prop
  calciumTransient : Prop

structure MuscleActivationEvidence {T : TissueConstitutivePackage} (M : MuscleActivationPackage T) where
  activationDynamicsClosed : M.activationDynamics
  forceLengthRelationClosed : M.forceLengthRelation
  forceVelocityRelationClosed : M.forceVelocityRelation
  calciumTransientClosed : M.calciumTransient

def MuscleActivationClosed {T : TissueConstitutivePackage} (M : MuscleActivationPackage T) : Prop :=
  M.activationDynamics ∧ M.forceLengthRelation ∧ M.forceVelocityRelation ∧ M.calciumTransient

theorem muscle_activation_closed_from_evidence {T : TissueConstitutivePackage} (M : MuscleActivationPackage T) (E : MuscleActivationEvidence M) : MuscleActivationClosed M := by
  exact And.intro E.activationDynamicsClosed (And.intro E.forceLengthRelationClosed (And.intro E.forceVelocityRelationClosed E.calciumTransientClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse