import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure MuscleFiberPackage where
  sarcomereLength : Type
  crossBridgeDynamics : Prop
  forceLengthRelation : Prop
  forceVelocityRelation : Prop
  activationDynamics : Prop

structure MuscleFiberEvidence (M : MuscleFiberPackage) where
  sarcomereLengthMeasurable : Prop
  crossBridgeDynamicsClosed : M.crossBridgeDynamics
  forceLengthRelationClosed : M.forceLengthRelation
  forceVelocityRelationClosed : M.forceVelocityRelation
  activationDynamicsClosed : M.activationDynamics

def MuscleFiberClosed (M : MuscleFiberPackage) : Prop :=
  M.crossBridgeDynamics ∧ M.forceLengthRelation ∧
  M.forceVelocityRelation ∧ M.activationDynamics

theorem muscle_fiber_closed_from_evidence (M : MuscleFiberPackage) (E : MuscleFiberEvidence M) :
    MuscleFiberClosed M := by
  exact And.intro E.crossBridgeDynamicsClosed
    (And.intro E.forceLengthRelationClosed
      (And.intro E.forceVelocityRelationClosed E.activationDynamicsClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse