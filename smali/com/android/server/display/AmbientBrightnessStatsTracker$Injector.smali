.class Lcom/android/server/display/AmbientBrightnessStatsTracker$Injector;
.super Ljava/lang/Object;
.source "AmbientBrightnessStatsTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AmbientBrightnessStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public elapsedRealtimeMillis()J
    .locals 2

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalDate()Ljava/time/LocalDate;
    .locals 1

    .line 360
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public getUserId(Landroid/os/UserManager;I)I
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userSerialNumber"    # I

    .line 356
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result v0

    return v0
.end method

.method public getUserSerialNumber(Landroid/os/UserManager;I)I
    .locals 1
    .param p1, "userManager"    # Landroid/os/UserManager;
    .param p2, "userId"    # I

    .line 352
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    return v0
.end method
