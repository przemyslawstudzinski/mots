package org.motechproject.mots.repository.custom;

import org.motechproject.mots.domain.CommunityHealthWorker;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CommunityHealthWorkerRepositoryCustom {

  Page<CommunityHealthWorker> searchCommunityHealthWorkers(
      String chwId, String firstName, String familyName, String phoneNumber,
      String villageName, String facilityName, String sectorName,
      String districtName, String groupName, Boolean selected,
      Pageable pageable) throws IllegalArgumentException;
}
