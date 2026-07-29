import canonicalLaneMathlib.AdmissibleClass
import DirichletFormsTheoremCanonicalLaneLean.CapacityResolventLayer

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

def ConstrainedDirichletFormClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dirichlet_form_endgame (A : AdmissibleClass) :
    ConstrainedDirichletFormClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem dirichlet_form_closure_capacity_integrated :
    CapacityResolventLayerClosed capacityResolventCertificate := by
  exact capacity_resolvent_layer_closed_checked

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse