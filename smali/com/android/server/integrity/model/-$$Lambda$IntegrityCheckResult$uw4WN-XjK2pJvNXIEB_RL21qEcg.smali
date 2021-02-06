.class public final synthetic Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$uw4WN-XjK2pJvNXIEB_RL21qEcg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$uw4WN-XjK2pJvNXIEB_RL21qEcg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$uw4WN-XjK2pJvNXIEB_RL21qEcg;

    invoke-direct {v0}, Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$uw4WN-XjK2pJvNXIEB_RL21qEcg;-><init>()V

    sput-object v0, Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$uw4WN-XjK2pJvNXIEB_RL21qEcg;->INSTANCE:Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$uw4WN-XjK2pJvNXIEB_RL21qEcg;

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

    invoke-static {p1}, Lcom/android/server/integrity/model/IntegrityCheckResult;->lambda$isCausedByInstallerRule$1(Landroid/content/integrity/Rule;)Z

    move-result p1

    return p1
.end method
