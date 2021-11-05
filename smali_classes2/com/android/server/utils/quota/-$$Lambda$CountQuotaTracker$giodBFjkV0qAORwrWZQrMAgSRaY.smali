.class public final synthetic Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$giodBFjkV0qAORwrWZQrMAgSRaY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$giodBFjkV0qAORwrWZQrMAgSRaY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$giodBFjkV0qAORwrWZQrMAgSRaY;

    invoke-direct {v0}, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$giodBFjkV0qAORwrWZQrMAgSRaY;-><init>()V

    sput-object v0, Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$giodBFjkV0qAORwrWZQrMAgSRaY;->INSTANCE:Lcom/android/server/utils/quota/-$$Lambda$CountQuotaTracker$giodBFjkV0qAORwrWZQrMAgSRaY;

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

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/android/server/utils/quota/CountQuotaTracker;->lambda$new$5(Ljava/lang/Void;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object p1

    return-object p1
.end method
