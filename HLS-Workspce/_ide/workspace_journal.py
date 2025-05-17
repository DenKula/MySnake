# 2025-05-17T15:55:42.014480
import vitis

client = vitis.create_client()
client.set_workspace(path="HLS-Workspce")

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

