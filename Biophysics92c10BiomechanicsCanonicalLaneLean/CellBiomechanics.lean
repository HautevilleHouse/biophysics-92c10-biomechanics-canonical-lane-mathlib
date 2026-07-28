import Biophysics92c10BiomechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace Biophysics92c10BiomechanicsCanonicalLaneLean

structure CellBiomechanicsPackage where
  cellMembraneMechanics : Prop
  cytoskeletonDynamics : Prop
  cellAdhesion : Prop
  mechanotransduction : Prop

structure CellBiomechanicsEvidence (C : CellBiomechanicsPackage) where
  cellMembraneMechanicsClosed : C.cellMembraneMechanics
  cytoskeletonDynamicsClosed : C.cytoskeletonDynamics
  cellAdhesionClosed : C.cellAdhesion
  mechanotransductionClosed : C.mechanotransduction

def CellBiomechanicsClosed (C : CellBiomechanicsPackage) : Prop :=
  C.cellMembraneMechanics ∧ C.cytoskeletonDynamics ∧ C.cellAdhesion ∧ C.mechanotransduction

theorem cell_biomechanics_closed_from_evidence (C : CellBiomechanicsPackage) (E : CellBiomechanicsEvidence C) : CellBiomechanicsClosed C := by
  exact And.intro E.cellMembraneMechanicsClosed (And.intro E.cytoskeletonDynamicsClosed (And.intro E.cellAdhesionClosed E.mechanotransductionClosed))

end Biophysics92c10BiomechanicsCanonicalLaneLean
end HautevilleHouse