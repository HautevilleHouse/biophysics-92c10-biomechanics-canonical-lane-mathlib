import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure MuscleMechanicsPackage where
  forceLengthRelation : Prop
  forceVelocityRelation : Prop
  activationDynamics : Prop
  metabolicCost : Prop

structure MuscleMechanicsEvidence (M : MuscleMechanicsPackage) where
  forceLengthRelationClosed : M.forceLengthRelation
  forceVelocityRelationClosed : M.forceVelocityRelation
  activationDynamicsClosed : M.activationDynamics
  metabolicCostClosed : M.metabolicCost

def MuscleMechanicsClosed (M : MuscleMechanicsPackage) : Prop :=
  M.forceLengthRelation ∧ M.forceVelocityRelation ∧ M.activationDynamics ∧ M.metabolicCost

theorem muscle_mechanics_closed_from_evidence (M : MuscleMechanicsPackage)
    (E : MuscleMechanicsEvidence M) : MuscleMechanicsClosed M := by
  exact And.intro E.forceLengthRelationClosed
    (And.intro E.forceVelocityRelationClosed
      (And.intro E.activationDynamicsClosed E.metabolicCostClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse