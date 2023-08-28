package org.quarkus.samples.petclinic;

import io.quarkus.test.junit.QuarkusIntegrationTest;
import io.quarkus.test.security.TestSecurity;

@QuarkusIntegrationTest
@TestSecurity(authorizationEnabled = false)
public class VetsResourceIT extends VetsResourceTest {
}
