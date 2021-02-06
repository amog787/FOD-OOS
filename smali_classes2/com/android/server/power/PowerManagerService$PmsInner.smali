.class public final Lcom/android/server/power/PowerManagerService$PmsInner;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmsInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .line 637
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetWakelocks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getConstants()Lcom/android/server/power/PowerManagerService$Constants;
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$100(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdleMode()Z
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public getDeviceIdleTempWhitelist()[I
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 652
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    monitor-exit v0

    return-object v1

    .line 653
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDeviceIdleWhitelist()[I
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    return-object v0
.end method

.method public getForceSuspendActive()Z
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public getLightDeviceIdleMode()Z
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyLongScheduled()J
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPowerManagerHandler()Landroid/os/Handler;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getWakelocks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public updateWakeLockDisabledStatesLockedInner()V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)V

    .line 680
    return-void
.end method
