.class final Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
.super Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;
.source "TunerResourceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/ITunerResourceManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
    .param p2, "x1"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$1;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;-><init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)V

    return-void
.end method


# virtual methods
.method public isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z
    .locals 2
    .param p1, "challengerProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "holderProfile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "isHigherPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 392
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->isHigherPriorityInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 393
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Client profiles can\'t be null."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V
    .locals 3
    .param p1, "profile"    # Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;
    .param p2, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .param p3, "clientId"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "registerClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "registerClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 132
    if-eqz p1, :cond_3

    .line 136
    if-eqz p3, :cond_2

    .line 140
    if-eqz p2, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$300(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getUseCase()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/UseCasePriorityHints;->isDefinedUseCase(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->registerClientProfileInternal(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;[I)V

    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 145
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use undefined client use case:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->getUseCase()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IResourcesReclaimListener can\'t be null!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "clientId can\'t be null!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ResourceClientProfile can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseCasSession(II)V
    .locals 5
    .param p1, "casSessionHandle"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseCasSession"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$700(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getClientProfile(I)Lcom/android/server/tv/tunerresourcemanager/ClientProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/ClientProfile;->getInUseCasSystemId()I

    move-result v1

    .line 352
    .local v1, "casSystemId":I
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getCasResource(I)Lcom/android/server/tv/tunerresourcemanager/CasResource;

    move-result-object v2

    .line 353
    .local v2, "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    if-eqz v2, :cond_1

    .line 356
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/CasResource;->getOwnerClientIds()Ljava/util/Set;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, v2, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseCasSessionInternal(Lcom/android/server/tv/tunerresourcemanager/CasResource;I)V

    .line 361
    .end local v1    # "casSystemId":I
    .end local v2    # "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    monitor-exit v0

    .line 362
    return-void

    .line 357
    .restart local v1    # "casSystemId":I
    .restart local v2    # "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    :cond_0
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Client is not the current owner of the releasing cas."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "casSessionHandle":I
    .end local p2    # "clientId":I
    throw v3

    .line 354
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "casSessionHandle":I
    .restart local p2    # "clientId":I
    :cond_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Releasing cas does not exist."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "casSessionHandle":I
    .end local p2    # "clientId":I
    throw v3

    .line 349
    .end local v1    # "casSystemId":I
    .end local v2    # "cas":Lcom/android/server/tv/tunerresourcemanager/CasResource;
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "casSessionHandle":I
    .restart local p2    # "clientId":I
    :cond_2
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release cas from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "casSessionHandle":I
    .end local p2    # "clientId":I
    throw v1

    .line 361
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "casSessionHandle":I
    .restart local p2    # "clientId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 345
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "casSessionHandle can\'t be invalid"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseDemux(II)V
    .locals 2
    .param p1, "demuxHandle"    # I
    .param p2, "clientId"    # I

    .line 324
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseDemux(demuxHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    return-void
.end method

.method public releaseDescrambler(II)V
    .locals 2
    .param p1, "descramblerHandle"    # I
    .param p2, "clientId"    # I

    .line 333
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseDescrambler"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseDescrambler(descramblerHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    return-void
.end method

.method public releaseFrontend(II)V
    .locals 5
    .param p1, "frontendHandle"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$700(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(I)I

    move-result v1

    .line 310
    .local v1, "frontendId":I
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getFrontendResource(I)Lcom/android/server/tv/tunerresourcemanager/FrontendResource;

    move-result-object v2

    .line 311
    .local v2, "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {v2}, Lcom/android/server/tv/tunerresourcemanager/FrontendResource;->getOwnerClientId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseFrontendInternal(Lcom/android/server/tv/tunerresourcemanager/FrontendResource;)V

    .line 319
    .end local v1    # "frontendId":I
    .end local v2    # "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    monitor-exit v0

    .line 320
    return-void

    .line 315
    .restart local v1    # "frontendId":I
    .restart local v2    # "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    :cond_0
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Client is not the current owner of the releasing fe."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "frontendHandle":I
    .end local p2    # "clientId":I
    throw v3

    .line 312
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "frontendHandle":I
    .restart local p2    # "clientId":I
    :cond_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Releasing frontend does not exist."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "frontendHandle":I
    .end local p2    # "clientId":I
    throw v3

    .line 306
    .end local v1    # "frontendId":I
    .end local v2    # "fe":Lcom/android/server/tv/tunerresourcemanager/FrontendResource;
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "frontendHandle":I
    .restart local p2    # "clientId":I
    :cond_2
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release frontend from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "frontendHandle":I
    .end local p2    # "clientId":I
    throw v1

    .line 319
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "frontendHandle":I
    .restart local p2    # "clientId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 302
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "frontendHandle can\'t be invalid"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public releaseLnb(II)V
    .locals 4
    .param p1, "lnbHandle"    # I
    .param p2, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "releaseLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$700(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getResourceIdFromHandle(I)I

    move-result v0

    .line 375
    .local v0, "lnbId":I
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->getLnbResource(I)Lcom/android/server/tv/tunerresourcemanager/LnbResource;

    move-result-object v1

    .line 376
    .local v1, "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v1}, Lcom/android/server/tv/tunerresourcemanager/LnbResource;->getOwnerClientId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 383
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->releaseLnbInternal(Lcom/android/server/tv/tunerresourcemanager/LnbResource;)V

    .line 384
    monitor-exit v2

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 380
    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Client is not the current owner of the releasing lnb."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 377
    :cond_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Releasing lnb does not exist."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 372
    .end local v0    # "lnbId":I
    .end local v1    # "lnb":Lcom/android/server/tv/tunerresourcemanager/LnbResource;
    :cond_2
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Release lnb from unregistered client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "lnbHandle can\'t be invalid"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z
    .locals 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .param p2, "casSessionHandle"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestCasSession"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 267
    if-eqz p2, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestCasSessionInternal(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 272
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request cas from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "request":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .end local p2    # "casSessionHandle":[I
    throw v1

    .line 276
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "request":Landroid/media/tv/tunerresourcemanager/CasSessionRequest;
    .restart local p2    # "casSessionHandle":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 268
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "casSessionHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDemux(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z
    .locals 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .param p2, "demuxHandle"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestDemux"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 234
    if-eqz p2, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDemuxInternal(Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 239
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request demux from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "request":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .end local p2    # "demuxHandle":[I
    throw v1

    .line 243
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "request":Landroid/media/tv/tunerresourcemanager/TunerDemuxRequest;
    .restart local p2    # "demuxHandle":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 235
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "demuxHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestDescrambler(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z
    .locals 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .param p2, "descramblerHandle"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestDescrambler"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$600(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestDescrambler"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 251
    if-eqz p2, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestDescramblerInternal(Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 256
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request descrambler from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "request":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .end local p2    # "descramblerHandle":[I
    throw v1

    .line 260
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "request":Landroid/media/tv/tunerresourcemanager/TunerDescramblerRequest;
    .restart local p2    # "descramblerHandle":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 252
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "descramblerHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestFrontend(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z
    .locals 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .param p2, "frontendHandle"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 208
    if-eqz p2, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestFrontendInternal(Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 213
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request frontend from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "request":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .end local p2    # "frontendHandle":[I
    throw v1

    .line 217
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "request":Landroid/media/tv/tunerresourcemanager/TunerFrontendRequest;
    .restart local p2    # "frontendHandle":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 209
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "frontendHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestLnb(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z
    .locals 4
    .param p1, "request"    # Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .param p2, "lnbHandle"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "requestLnb"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 284
    if-eqz p2, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->getClientId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->requestLnbInternal(Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;[I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 289
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request lnb from unregistered client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p1}, Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;->getClientId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .end local p1    # "request":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .end local p2    # "lnbHandle":[I
    throw v1

    .line 293
    .restart local p0    # "this":Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;
    .restart local p1    # "request":Landroid/media/tv/tunerresourcemanager/TunerLnbRequest;
    .restart local p2    # "lnbHandle":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 285
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "lnbHandle can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFrontendInfoList([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V
    .locals 2
    .param p1, "infos"    # [Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "setFrontendInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 176
    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setFrontendInfoListInternal([Landroid/media/tv/tunerresourcemanager/TunerFrontendInfo;)V

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 177
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "TunerFrontendInfo can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLnbInfoList([I)V
    .locals 2
    .param p1, "lnbIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "setLnbInfoList"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 195
    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->setLnbInfoListInternal([I)V

    .line 200
    monitor-exit v0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 196
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Lnb id list can\'t be null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shareFrontend(II)V
    .locals 2
    .param p1, "selfClientId"    # I
    .param p2, "targetClientId"    # I

    .line 222
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "shareFrontend"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$200(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shareFrontend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TunerResourceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    return-void
.end method

.method public unregisterClientProfile(I)V
    .locals 4
    .param p1, "clientId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "unregisterClientProfile"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "TunerResourceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistering non exists client:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    monitor-exit v0

    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->unregisterClientProfileInternal(I)V

    .line 162
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCasInfo(II)V
    .locals 2
    .param p1, "casSystemId"    # I
    .param p2, "maxSessionNum"    # I

    .line 186
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "updateCasInfo"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateCasInfoInternal(II)V

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateClientPriority(III)Z
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "priority"    # I
    .param p3, "niceValue"    # I

    .line 167
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    const-string v1, "updateClientPriority"

    invoke-static {v0, v1}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$100(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$BinderService;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->updateClientPriorityInternal(III)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
