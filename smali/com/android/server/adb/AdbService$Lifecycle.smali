.class public Lcom/android/server/adb/AdbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mAdbService:Lcom/android/server/adb/AdbService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 97
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 108
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbService;->systemReady()V

    goto :goto_0

    .line 110
    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 111
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/adb/-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU;->INSTANCE:Lcom/android/server/adb/-$$Lambda$snZvZtOkSiN_ZXrW9Ua-AMDz9HU;

    iget-object v2, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 102
    new-instance v0, Lcom/android/server/adb/AdbService;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/adb/AdbService;-><init>(Landroid/content/Context;Lcom/android/server/adb/AdbService$1;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    .line 103
    const-string v1, "adb"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/adb/AdbService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 104
    return-void
.end method
