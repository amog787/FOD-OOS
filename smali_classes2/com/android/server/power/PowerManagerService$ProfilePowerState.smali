.class final Lcom/android/server/power/PowerManagerService$ProfilePowerState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfilePowerState"
.end annotation


# instance fields
.field mLastUserActivityTime:J

.field mLockingNotified:Z

.field mScreenOffTimeout:J

.field final mUserId:I

.field mWakeLockSummary:I


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "screenOffTimeout"    # J
    .param p4, "now"    # J

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    .line 726
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    .line 728
    iput-wide p4, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 729
    return-void
.end method
