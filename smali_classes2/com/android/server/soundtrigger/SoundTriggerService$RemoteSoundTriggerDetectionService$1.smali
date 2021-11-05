.class Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;
.super Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient$Stub;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

.field final synthetic val$this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    .line 1004
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->val$this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpFinished(I)V
    .locals 5
    .param p1, "opId"    # I

    .line 1007
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1009
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1300(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1010
    :try_start_1
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1400(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1012
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1400(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1500(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1013
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1600(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1014
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1700(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    goto :goto_0

    .line 1016
    :cond_0
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;->this$1:Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;

    invoke-static {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->access$1800(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    .line 1019
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1021
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    nop

    .line 1023
    return-void

    .line 1019
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;
    .end local p1    # "opId":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1021
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;
    .restart local p1    # "opId":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    throw v2
.end method
