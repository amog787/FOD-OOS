.class public final synthetic Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$9Og8AMtBlYIqTH1ZkWMuKL0jdhA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$9Og8AMtBlYIqTH1ZkWMuKL0jdhA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$9Og8AMtBlYIqTH1ZkWMuKL0jdhA;

    invoke-direct {v0}, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$9Og8AMtBlYIqTH1ZkWMuKL0jdhA;-><init>()V

    sput-object v0, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$9Og8AMtBlYIqTH1ZkWMuKL0jdhA;->INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$9Og8AMtBlYIqTH1ZkWMuKL0jdhA;

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

    invoke-static {p1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->lambda$getIndexingDetailsForCompoundFormula$1(Lcom/android/server/integrity/serializer/RuleIndexingDetails;)Z

    move-result p1

    return p1
.end method
