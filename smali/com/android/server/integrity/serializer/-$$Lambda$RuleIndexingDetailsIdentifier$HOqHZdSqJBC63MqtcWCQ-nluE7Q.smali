.class public final synthetic Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$HOqHZdSqJBC63MqtcWCQ-nluE7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$HOqHZdSqJBC63MqtcWCQ-nluE7Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$HOqHZdSqJBC63MqtcWCQ-nluE7Q;

    invoke-direct {v0}, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$HOqHZdSqJBC63MqtcWCQ-nluE7Q;-><init>()V

    sput-object v0, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$HOqHZdSqJBC63MqtcWCQ-nluE7Q;->INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$HOqHZdSqJBC63MqtcWCQ-nluE7Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    invoke-static {p1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->lambda$getIndexingDetailsForCompoundFormula$3(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z

    move-result p1

    return p1
.end method
