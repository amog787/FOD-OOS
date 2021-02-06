.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;->f$3:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;->f$2:I

    iget-object v3, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$Fbs0C_KjUpE0imxFftpdBfeTJpg;->f$3:Landroid/os/RemoteCallback;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$getProviderMimeTypeAsync$1$ActivityManagerService(Ljava/lang/String;ILandroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method
