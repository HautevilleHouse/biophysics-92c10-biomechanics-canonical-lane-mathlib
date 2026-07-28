import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure FiniteElementPackage where
  mesh : Type
  shapeFunctions : Prop
  integrationScheme : Prop
  assemblyProcedure : Prop
  solverConvergence : Prop

structure FiniteElementEvidence (F : FiniteElementPackage) where
  meshValid : Prop
  shapeFunctionsClosed : F.shapeFunctions
  integrationSchemeClosed : F.integrationScheme
  assemblyProcedureClosed : F.assemblyProcedure
  solverConvergenceClosed : F.solverConvergence

def FiniteElementClosed (F : FiniteElementPackage) : Prop :=
  F.shapeFunctions ∧ F.integrationScheme ∧
  F.assemblyProcedure ∧ F.solverConvergence

theorem finite_element_closed_from_evidence (F : FiniteElementPackage) (E : FiniteElementEvidence F) :
    FiniteElementClosed F := by
  exact And.intro E.shapeFunctionsClosed
    (And.intro E.integrationSchemeClosed
      (And.intro E.assemblyProcedureClosed E.solverConvergenceClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse