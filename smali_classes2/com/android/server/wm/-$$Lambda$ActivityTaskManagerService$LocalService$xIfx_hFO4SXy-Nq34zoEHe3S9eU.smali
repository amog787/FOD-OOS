.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$LocalService$xIfx_hFO4SXy-Nq34zoEHe3S9eU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService$LocalService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$LocalService$xIfx_hFO4SXy-Nq34zoEHe3S9eU;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$LocalService$xIfx_hFO4SXy-Nq34zoEHe3S9eU;->f$0:Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->lambda$showSystemReadyErrorDialogsIfNeeded$1$ActivityTaskManagerService$LocalService()V

    return-void
.end method
