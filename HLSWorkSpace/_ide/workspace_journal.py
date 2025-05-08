# 2025-05-07T16:02:18.681980
import vitis

client = vitis.create_client()
client.set_workspace(path="HLSWorkSpace")

comp = client.create_hls_component(name = "SnakeOnHls",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="SnakeOnHls")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

