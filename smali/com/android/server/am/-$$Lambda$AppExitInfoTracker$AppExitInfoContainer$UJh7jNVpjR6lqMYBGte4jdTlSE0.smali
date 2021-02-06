.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UJh7jNVpjR6lqMYBGte4jdTlSE0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/ApplicationExitInfo;

    check-cast p2, Landroid/app/ApplicationExitInfo;

    invoke-static {p1, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->lambda$getExitInfoLocked$0(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p1

    return p1
.end method
