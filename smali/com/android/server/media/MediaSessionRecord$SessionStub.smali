.class final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "x1"    # Lcom/android/server/media/MediaSessionRecord$1;

    .line 800
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method


# virtual methods
.method public destroySession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 803
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 805
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService;->destroySession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 808
    nop

    .line 809
    return-void

    .line 807
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getController()Landroid/media/session/ISessionController;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1000(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    move-result-object v0

    return-object v0
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    .line 814
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 813
    :goto_0
    const/4 v2, 0x6

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 815
    return-void
.end method

.method public setActive(Z)V
    .locals 4
    .param p1, "active"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1102(Lcom/android/server/media/MediaSessionRecord;Z)Z

    .line 825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 827
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService;->updateSession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 830
    nop

    .line 831
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 832
    return-void

    .line 829
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCurrentVolume(I)V
    .locals 2
    .param p1, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$602(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 936
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 937
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 923
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->access$2202(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 924
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 926
    return-void

    .line 924
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFlags(I)V
    .locals 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    const/high16 v0, 0x10000

    and-int v1, p1, v0

    if-eqz v1, :cond_0

    .line 837
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 838
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 839
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/media/MediaSessionService;->enforcePhoneStatePermission(II)V

    .line 841
    .end local v1    # "pid":I
    .end local v2    # "uid":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->access$1202(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 842
    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 845
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService;->setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    goto :goto_0

    .line 847
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 850
    .end local v0    # "token":J
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 851
    return-void
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1402(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 867
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1302(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 856
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 858
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    nop

    .line 862
    return-void

    .line 860
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    .locals 3
    .param p1, "metadata"    # Landroid/media/MediaMetadata;
    .param p2, "duration"    # J
    .param p4, "metadataDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 873
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 874
    :cond_0
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v1

    :goto_0
    nop

    .line 878
    .local v1, "temp":Landroid/media/MediaMetadata;
    if-eqz v1, :cond_1

    .line 879
    invoke-virtual {v1}, Landroid/media/MediaMetadata;->size()I

    .line 881
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionRecord;->access$1602(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 882
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->access$1702(Lcom/android/server/media/MediaSessionRecord;J)J

    .line 883
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, p4}, Lcom/android/server/media/MediaSessionRecord;->access$1802(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)Ljava/lang/String;

    .line 884
    nop

    .end local v1    # "temp":Landroid/media/MediaMetadata;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 886
    return-void

    .line 884
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 6
    .param p1, "state"    # Landroid/media/session/PlaybackState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 891
    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 892
    .local v0, "oldState":I
    :goto_0
    if-nez p1, :cond_1

    .line 893
    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    .line 894
    .local v1, "newState":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 895
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionRecord;->access$1902(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;

    .line 896
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 899
    .local v2, "token":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 902
    nop

    .line 903
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 904
    return-void

    .line 901
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 896
    .end local v2    # "token":J
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 943
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 944
    .local v1, "typeChanged":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionRecord;->access$2402(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 945
    if-eqz p1, :cond_1

    .line 946
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2502(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    goto :goto_1

    .line 948
    :cond_1
    const-string v2, "MediaSessionRecord"

    const-string v3, "Received null audio attributes, using existing attributes"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 951
    if-eqz v1, :cond_2

    .line 952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 954
    .local v2, "token":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 957
    nop

    .line 958
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    goto :goto_2

    .line 956
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 960
    .end local v2    # "token":J
    :cond_2
    :goto_2
    return-void

    .line 950
    .end local v1    # "typeChanged":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setPlaybackToRemote(II)V
    .locals 5
    .param p1, "control"    # I
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 965
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 966
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2400(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 967
    .local v1, "typeChanged":Z
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionRecord;->access$2402(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 968
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2602(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 969
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, p2}, Lcom/android/server/media/MediaSessionRecord;->access$2702(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 970
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 971
    if-eqz v1, :cond_1

    .line 972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 974
    .local v2, "token":J
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$800(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 976
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 977
    nop

    .line 978
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    goto :goto_1

    .line 976
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 980
    .end local v2    # "token":J
    :cond_1
    :goto_1
    return-void

    .line 970
    .end local v1    # "typeChanged":Z
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setQueue(Landroid/content/pm/ParceledListSlice;)V
    .locals 3
    .param p1, "queue"    # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->access$2002(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)Ljava/util/List;

    .line 910
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 912
    return-void

    .line 910
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2102(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 917
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    .line 918
    return-void
.end method

.method public setRatingType(I)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->access$2302(Lcom/android/server/media/MediaSessionRecord;I)I

    .line 931
    return-void
.end method
