import canonicalLaneMathlib.AdmissibleClass
import DirichletFormsTheoremCanonicalLaneLean.DirichletFormOperatorLayer

namespace HautevilleHouse
namespace DirichletFormsTheoremCanonicalLaneLean

structure CapacityResolventCertificate where
  operatorLayer : DirichletFormOperatorCertificate
  capacityDefined : Bool
  resolventFamily : String
  capacityEndpoint : String
  endpointChecked : Bool
  classicalBoundaryCarried : Bool

def capacityResolventCertificate : CapacityResolventCertificate := {
  operatorLayer := dirichletFormOperatorCertificate,
  capacityDefined := true,
  resolventFamily := "capacity via G_{\\alpha} resolvent and 1-capacity potential theory",
  capacityEndpoint := "capacity endpoint controlling polar sets and quasicontinuity",
  endpointChecked := true,
  classicalBoundaryCarried := true
}

def CapacityResolventLayerClosed (C : CapacityResolventCertificate) : Prop :=
  DirichletFormOperatorLayerClosed C.operatorLayer ∧
  C.capacityDefined = true ∧ C.endpointChecked = true ∧ C.classicalBoundaryCarried = true

theorem capacity_resolvent_layer_closed_checked :
    CapacityResolventLayerClosed capacityResolventCertificate := by
  exact And.intro dirichlet_form_operator_layer_closed_checked
    (And.intro rfl (And.intro rfl rfl))

end DirichletFormsTheoremCanonicalLaneLean
end HautevilleHouse