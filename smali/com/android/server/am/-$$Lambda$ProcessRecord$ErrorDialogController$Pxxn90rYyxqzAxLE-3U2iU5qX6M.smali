.class public final synthetic Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$Pxxn90rYyxqzAxLE-3U2iU5qX6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessRecord$ErrorDialogController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessRecord$ErrorDialogController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$Pxxn90rYyxqzAxLE-3U2iU5qX6M;->f$0:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ProcessRecord$ErrorDialogController$Pxxn90rYyxqzAxLE-3U2iU5qX6M;->f$0:Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->lambda$showDebugWaitingDialogs$3$ProcessRecord$ErrorDialogController()V

    return-void
.end method
