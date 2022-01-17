resources:
  - name: test-shared-vpc-subnet-iam-policy
    type: shared_vpc_subnet_iam.py
    properties:
      policy:
        bindings:
          - resourceId: test-subnet-1
            region: us-east1
            role: roles/compute.networkUser
            members:
              - user:name@example.com
              - serviceAccount:example@myprojectname.gserviceaccount.com
          - resourceId: <FIXME:subnetId>
            region: us-east1
            role: roles/compute.networkUser
            members:
              - group:admins@example.com
              - domain:example.com
              decription for google service 