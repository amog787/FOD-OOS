.class final Lcom/android/server/AlarmManagerService$LocalService;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Lcom/android/server/AlarmManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .line 2233
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p2, "x1"    # Lcom/android/server/AlarmManagerService$1;

    .line 2233
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-void
.end method


# virtual methods
.method public isIdling()Z
    .locals 1

    .line 2236
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Z

    move-result v0

    return v0
.end method

.method public registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/AlarmManagerInternal$InFlightListener;

    .line 2248
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2249
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2250
    monitor-exit v0

    .line 2251
    return-void

    .line 2250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAlarmsForUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2241
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2242
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$LocalService;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService;->removeLocked(I)V

    .line 2243
    monitor-exit v0

    .line 2244
    return-void

    .line 2243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
