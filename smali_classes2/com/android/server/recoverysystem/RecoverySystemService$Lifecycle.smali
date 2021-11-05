.class public final Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 148
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-virtual {v0}, Lcom/android/server/recoverysystem/RecoverySystemService;->onSystemServicesReady()V

    .line 151
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 155
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Landroid/content/Context;Lcom/android/server/recoverysystem/RecoverySystemService$1;)V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;

    .line 156
    const-string v1, "recovery"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 157
    return-void
.end method
