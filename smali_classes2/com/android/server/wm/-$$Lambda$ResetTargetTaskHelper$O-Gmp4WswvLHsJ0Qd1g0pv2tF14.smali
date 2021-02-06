.class public final synthetic Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ResetTargetTaskHelper$O-Gmp4WswvLHsJ0Qd1g0pv2tF14;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/ResetTargetTaskHelper;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ResetTargetTaskHelper;->lambda$O-Gmp4WswvLHsJ0Qd1g0pv2tF14(Lcom/android/server/wm/ResetTargetTaskHelper;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
