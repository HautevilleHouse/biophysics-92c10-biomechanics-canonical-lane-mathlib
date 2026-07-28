import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure ContinuumMechanicsPDEPackage where
  deformationGradient : Type
  stressTensor : Type
  balanceOfLinearMomentum : Prop
  constitutiveEquation : Prop
  boundaryConditions : Prop

structure ContinuumMechanicsPDEEvidence (P : ContinuumMechanicsPDEPackage) where
  deformationGradientDefined : Prop
  stressTensorDefined : Prop
  balanceOfLinearMomentumClosed : P.balanceOfLinearMomentum
  constitutiveEquationClosed : P.constitutiveEquation
  boundaryConditionsClosed : P.boundaryConditions

def ContinuumMechanicsPDEClosed (P : ContinuumMechanicsPDEPackage) : Prop :=
  P.balanceOfLinearMomentum ∧ P.constitutiveEquation ∧ P.boundaryConditions

theorem continuum_mechanics_pde_closed_from_evidence (P : ContinuumMechanicsPDEPackage)
    (E : ContinuumMechanicsPDEEvidence P) : ContinuumMechanicsPDEClosed P := by
  exact And.intro E.balanceOfLinearMomentumClosed
    (And.intro E.constitutiveEquationClosed E.boundaryConditionsClosed)

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse