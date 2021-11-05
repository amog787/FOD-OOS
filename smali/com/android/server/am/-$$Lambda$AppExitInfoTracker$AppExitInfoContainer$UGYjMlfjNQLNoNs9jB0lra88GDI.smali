.class public final synthetic Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$AppExitInfoContainer$UGYjMlfjNQLNoNs9jB0lra88GDI;

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

    invoke-static {p1, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->lambda$dumpLocked$2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p1

    return p1
.end method
