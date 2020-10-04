.class final Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;
.super Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/server/contentcapture/ContentCaptureManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p2, "x1"    # Lcom/android/server/contentcapture/ContentCaptureManagerService$1;

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    return-void
.end method


# virtual methods
.method public getOptionsForPackage(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object v0, v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    move-result-object v0

    return-object v0
.end method

.method public isContentCaptureServiceForUser(II)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .line 708
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 710
    .local v1, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v1, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isContentCaptureServiceForUserLocked(I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 713
    .end local v1    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_0
    monitor-exit v0

    .line 714
    const/4 v0, 0x0

    return v0

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyActivityEvent(ILandroid/content/ComponentName;I)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "activityComponent"    # Landroid/content/ComponentName;
    .param p3, "eventType"    # I

    .line 737
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 738
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 739
    .local v1, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {v1, p2, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onActivityEventLocked(Landroid/content/ComponentName;I)V

    .line 742
    .end local v1    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_0
    monitor-exit v0

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendActivityAssistData(ILandroid/os/IBinder;Landroid/os/Bundle;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 720
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-static {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$3200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 722
    .local v1, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v1, :cond_0

    .line 723
    invoke-virtual {v1, p2, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 725
    .end local v1    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_0
    monitor-exit v0

    .line 726
    const/4 v0, 0x0

    return v0

    .line 725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
