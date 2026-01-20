# tfe_fdo_on_podman_in_external_services_mode.py

from diagrams import Cluster, Diagram
from diagrams.aws.network import Route53
from diagrams.azure.identity import Users 
from diagrams.azure.compute import VM
from diagrams.azure.database import SQLDatabases
from diagrams.azure.storage import BlobStorage

with Diagram("TFE FDO on Podman in External Services mode", show=False, direction="TB"):
    client = Users("Client")
    with Cluster("AWS"):
        dns = Route53("Route 53 DNS") 
    with Cluster("Azure"):
        with Cluster("VNet"):
            with Cluster("Public Subnet"):
                tfe_instance = VM("RHEL VM")
            with Cluster("Private Subnet"):
                postgres = SQLDatabases("PostgreSQL database")
        storage = BlobStorage("Blob Storage")        

    client >> dns
    dns >> tfe_instance
    tfe_instance >> postgres
    tfe_instance >> storage