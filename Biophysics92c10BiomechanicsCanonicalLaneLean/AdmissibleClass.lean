import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure BiomechanicsAdmittedObject where
  tissue : Type
  constitutiveLaw : Prop
  boundaryConditions : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : BiomechanicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse