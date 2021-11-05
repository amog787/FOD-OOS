.class public final synthetic Lcom/android/server/-$$Lambda$DeviceIdleController$WYuAzLLj2li9IRcToeVdChTK5BA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$DeviceIdleController$WYuAzLLj2li9IRcToeVdChTK5BA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$DeviceIdleController$WYuAzLLj2li9IRcToeVdChTK5BA;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$DeviceIdleController$WYuAzLLj2li9IRcToeVdChTK5BA;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$DeviceIdleController$WYuAzLLj2li9IRcToeVdChTK5BA;->INSTANCE:Lcom/android/server/-$$Lambda$DeviceIdleController$WYuAzLLj2li9IRcToeVdChTK5BA;

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

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->lambda$stepIdleStateLocked$4(Lcom/android/server/deviceidle/DeviceIdleConstraintTracker;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
