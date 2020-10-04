.class Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "TrustManagerService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustTimeoutAlarmListener"
.end annotation


# instance fields
.field private mIsQueued:Z

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0
    .param p2, "userId"    # I

    .line 1559
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1557
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 1560
    iput p2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 1561
    return-void
.end method


# virtual methods
.method public isQueued()Z
    .locals 1

    .line 1582
    iget-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    return v0
.end method

.method public onAlarm()V
    .locals 4

    .line 1565
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 1566
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v0}, Lcom/android/server/trust/TrustManagerService;->access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move-result-object v0

    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    .line 1569
    .local v0, "strongAuthState":I
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    move-result-object v1

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1570
    sget-boolean v1, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TrustManagerService"

    const-string v2, "Revoking all trust because of trust timeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v1}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 1572
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$1200(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 1571
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1574
    :cond_1
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/trust/TrustManagerService;->access$3200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1575
    return-void
.end method

.method public setQueued(Z)V
    .locals 0
    .param p1, "isQueued"    # Z

    .line 1578
    iput-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 1579
    return-void
.end method
