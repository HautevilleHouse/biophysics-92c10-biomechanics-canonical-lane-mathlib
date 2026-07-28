import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure TissueClosurePackage where
  wholeMuscleForce : Type
  lengthTensionCurve : Prop
  forceVelocityCurve : Prop
  activationContractionCoupling : Prop
  structuralOrganisation : Prop

structure TissueClosureEvidence (T : TissueClosurePackage) where
  wholeMuscleForceMeasurable : Prop
  lengthTensionCurveClosed : T.lengthTensionCurve
  forceVelocityCurveClosed : T.forceVelocityCurve
  activationContractionCouplingClosed : T.activationContractionCoupling
  structuralOrganisationClosed : T.structuralOrganisation

def TissueClosureClosed (T : TissueClosurePackage) : Prop :=
  T.lengthTensionCurve ∧ T.forceVelocityCurve ∧
  T.activationContractionCoupling ∧ T.structuralOrganisation

theorem tissue_closure_closed_from_evidence (T : TissueClosurePackage) (E : TissueClosureEvidence T) :
    TissueClosureClosed T := by
  exact And.intro E.lengthTensionCurveClosed
    (And.intro E.forceVelocityCurveClosed
      (And.intro E.activationContractionCouplingClosed E.structuralOrganisationClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse