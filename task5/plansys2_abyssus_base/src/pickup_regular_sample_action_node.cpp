#include <memory>
#include <algorithm>

#include "plansys2_executor/ActionExecutorClient.hpp"

#include "rclcpp/rclcpp.hpp"
#include "rclcpp_action/rclcpp_action.hpp"

using namespace std::chrono_literals;

class PickupRegularSampleAction : public plansys2::ActionExecutorClient
{
public:
  PickupRegularSampleAction()
  : plansys2::ActionExecutorClient("pickup_regular_sample", 250ms)
  {
    progress_ = 0.0;
  }

private:
  void do_work()
  {
    if (progress_ < 1.0) {
      progress_ = std::min(1.0f, progress_ + 0.33333334f);
      send_feedback(progress_, "Pickup regular sample running");
    } else {
      finish(true, 1.0, "Pickup regular sample completed");

      progress_ = 0.0;
      std::cout << std::endl;
    }

    std::cout << "\r\e[K" << std::flush;
    std::cout << "Picking up regular sample ... [" << std::min(100.0, progress_ * 100.0) << "%]  " <<
      std::flush;
  }

  float progress_;
};

int main(int argc, char ** argv)
{
  rclcpp::init(argc, argv);
  auto node = std::make_shared<PickupRegularSampleAction>();

  node->set_parameter(rclcpp::Parameter("action_name", "pickup_regular_sample"));
  node->trigger_transition(lifecycle_msgs::msg::Transition::TRANSITION_CONFIGURE);
   

  rclcpp::spin(node->get_node_base_interface());

  rclcpp::shutdown();

  return 0;
}
