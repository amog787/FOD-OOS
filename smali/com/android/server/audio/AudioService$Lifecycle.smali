.class public final Lcom/android/server/audio/AudioService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 738
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 739
    new-instance v0, Lcom/android/server/audio/AudioService;

    invoke-direct {v0, p1}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    .line 740
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 749
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->systemReady()V

    .line 752
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/android/server/audio/AudioService$Lifecycle;->mService:Lcom/android/server/audio/AudioService;

    const-string v1, "audio"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/AudioService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 745
    return-void
.end method
