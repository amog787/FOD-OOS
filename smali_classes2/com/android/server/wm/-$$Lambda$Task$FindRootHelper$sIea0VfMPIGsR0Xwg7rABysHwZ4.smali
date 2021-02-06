.class public final synthetic Lcom/android/server/wm/-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$Task$FindRootHelper$sIea0VfMPIGsR0Xwg7rABysHwZ4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/Task$FindRootHelper;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/Task$FindRootHelper;->lambda$sIea0VfMPIGsR0Xwg7rABysHwZ4(Lcom/android/server/wm/Task$FindRootHelper;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
