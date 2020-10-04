.class Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppUsageGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/AppTimeLimitController;
    .param p2, "user"    # Lcom/android/server/usage/AppTimeLimitController$UserData;
    .param p3, "observerApp"    # Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .param p4, "observerId"    # I
    .param p5, "observed"    # [Ljava/lang/String;
    .param p6, "timeLimitMs"    # J
    .param p8, "limitReachedCallback"    # Landroid/app/PendingIntent;

    .line 414
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 415
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 416
    return-void
.end method


# virtual methods
.method public onLimitReached()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 431
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->onLimitReached()V

    .line 433
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    .line 434
    return-void
.end method

.method public remove()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 421
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 422
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    .line 423
    .local v0, "observerApp":Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    if-eqz v0, :cond_0

    .line 424
    iget v1, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->mObserverId:I

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->removeAppUsageGroup(I)V

    .line 426
    :cond_0
    return-void
.end method
