import Biophysics92c10BiomechanicsCanonicalLaneLean.ConstitutiveModel

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure FiniteElementSimulationPackage {P : TissueMechanicsPackage}
    (C : ConstitutiveModelPackage P) where
  meshConvergence : Prop
  solverStability : Prop
  boundaryConditionsCorrect : Prop
  contactHandling : Prop
  largeDeformationCapability : Prop

structure FiniteElementSimulationEvidence {P : TissueMechanicsPackage}
    {C : ConstitutiveModelPackage P} (S : FiniteElementSimulationPackage C) where
  meshConvergenceClosed : S.meshConvergence
  solverStabilityClosed : S.solverStability
  boundaryConditionsCorrectClosed : S.boundaryConditionsCorrect
  contactHandlingClosed : S.contactHandling
  largeDeformationCapabilityClosed : S.largeDeformationCapability

def FiniteElementSimulationClosed {P : TissueMechanicsPackage}
    {C : ConstitutiveModelPackage P} (S : FiniteElementSimulationPackage C) : Prop :=
  S.meshConvergence ∧ S.solverStability ∧ S.boundaryConditionsCorrect ∧
  S.contactHandling ∧ S.largeDeformationCapability

theorem finite_element_simulation_closed_from_evidence
    {P : TissueMechanicsPackage} {C : ConstitutiveModelPackage P}
    (S : FiniteElementSimulationPackage C) (E : FiniteElementSimulationEvidence S) :
    FiniteElementSimulationClosed S := by
  exact And.intro E.meshConvergenceClosed
    (And.intro E.solverStabilityClosed
      (And.intro E.boundaryConditionsCorrectClosed
        (And.intro E.contactHandlingClosed E.largeDeformationCapabilityClosed)))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse
