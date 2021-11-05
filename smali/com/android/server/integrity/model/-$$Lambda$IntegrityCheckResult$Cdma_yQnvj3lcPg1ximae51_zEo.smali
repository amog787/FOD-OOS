.class public final synthetic Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$Cdma_yQnvj3lcPg1ximae51_zEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$Cdma_yQnvj3lcPg1ximae51_zEo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$Cdma_yQnvj3lcPg1ximae51_zEo;

    invoke-direct {v0}, Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$Cdma_yQnvj3lcPg1ximae51_zEo;-><init>()V

    sput-object v0, Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$Cdma_yQnvj3lcPg1ximae51_zEo;->INSTANCE:Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$Cdma_yQnvj3lcPg1ximae51_zEo;

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

    check-cast p1, Landroid/content/integrity/Rule;

    invoke-static {p1}, Lcom/android/server/integrity/model/IntegrityCheckResult;->lambda$isCausedByAppCertRule$0(Landroid/content/integrity/Rule;)Z

    move-result p1

    return p1
.end method
