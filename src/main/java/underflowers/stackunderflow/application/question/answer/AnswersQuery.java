package underflowers.stackunderflow.application.question.answer;

import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import underflowers.stackunderflow.domain.question.QuestionId;
import underflowers.stackunderflow.domain.user.UserId;

@Builder
@Getter
@EqualsAndHashCode
public class AnswersQuery {
    private QuestionId id;

    @Builder.Default
    private UserId authUserId = null;
}