.class public final synthetic Lcom/android/server/-$$Lambda$DeviceIdleController$TvI-Yx9-dFl_39KgsbmlgCmJyl8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$DeviceIdleController$TvI-Yx9-dFl_39KgsbmlgCmJyl8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$DeviceIdleController$TvI-Yx9-dFl_39KgsbmlgCmJyl8;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$DeviceIdleController$TvI-Yx9-dFl_39KgsbmlgCmJyl8;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$DeviceIdleController$TvI-Yx9-dFl_39KgsbmlgCmJyl8;->INSTANCE:Lcom/android/server/-$$Lambda$DeviceIdleController$TvI-Yx9-dFl_39KgsbmlgCmJyl8;

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

    check-cast p1, Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lambda$stepIdleStateLocked$2(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
