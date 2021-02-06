.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;
.super Ljava/lang/Object;
.source "TunerResourceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResourcesReclaimListenerRecord"
.end annotation


# instance fields
.field private final mClientId:I

.field private final mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

.field final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
    .param p2, "listener"    # Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .param p3, "clientId"    # I

    .line 830
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    iput-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 832
    iput p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    .line 833
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$400(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 838
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->access$800(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)V

    .line 839
    monitor-exit v0

    .line 840
    return-void

    .line 839
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getId()I
    .locals 1

    .line 843
    iget v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    return v0
.end method

.method public getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    return-object v0
.end method
