.class public final synthetic Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$pIB6CD1IxMPhoIxtBpzBs5iPv6s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$pIB6CD1IxMPhoIxtBpzBs5iPv6s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$pIB6CD1IxMPhoIxtBpzBs5iPv6s;

    invoke-direct {v0}, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$pIB6CD1IxMPhoIxtBpzBs5iPv6s;-><init>()V

    sput-object v0, Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$pIB6CD1IxMPhoIxtBpzBs5iPv6s;->INSTANCE:Lcom/android/server/integrity/serializer/-$$Lambda$RuleIndexingDetailsIdentifier$pIB6CD1IxMPhoIxtBpzBs5iPv6s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/integrity/IntegrityFormula;

    invoke-static {p1}, Lcom/android/server/integrity/serializer/RuleIndexingDetailsIdentifier;->lambda$getIndexingDetailsForCompoundFormula$0(Landroid/content/integrity/IntegrityFormula;)Lcom/android/server/integrity/serializer/RuleIndexingDetails;

    move-result-object p1

    return-object p1
.end method
