package org.motechproject.mots.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Type;
import org.motechproject.mots.domain.enums.ChoiceType;

@Entity
@Table(name = "choice")
@NoArgsConstructor
public class Choice extends BaseTimestampedEntity {

  @Column(name = "choice_id", nullable = false)
  @Getter
  @Setter
  private Integer choiceId;

  @Column(name = "ivr_name")
  @Getter
  @Setter
  private String ivrName;

  @Enumerated(EnumType.STRING)
  @Column(name = "type", nullable = false)
  @Getter
  @Setter
  private ChoiceType type;

  @Type(type = "text")
  @Column(name = "description")
  @Getter
  @Setter
  private String description;

  private Choice(Integer choiceId, String ivrName, ChoiceType type, String description) {
    this.choiceId = choiceId;
    this.ivrName = ivrName;
    this.type = type;
    this.description = description;
  }

  public Choice copyAsNewDraft() {
    return new Choice(choiceId, ivrName, type, description);
  }
}
