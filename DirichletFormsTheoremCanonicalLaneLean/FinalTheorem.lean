import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletFormsTheoremCanonicalLaneLean.DirichletFormBridgeLemmas
import HautevilleHouse.DirichletFormsTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

def ConstrainedDirichletClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem dirichlet_endgame (A : AdmissibleClass) : ConstrainedDirichletClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse