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

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 66
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .line 76
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbService;->systemReady()V

    goto :goto_0

    .line 78
    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbService;->bootCompleted()V

    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 70
    new-instance v0, Lcom/android/server/adb/AdbService;

    invoke-virtual {p0}, Lcom/android/server/adb/AdbService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/adb/AdbService;-><init>(Landroid/content/Context;Lcom/android/server/adb/AdbService$1;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    .line 71
    iget-object v0, p0, Lcom/android/server/adb/AdbService$Lifecycle;->mAdbService:Lcom/android/server/adb/AdbService;

    const-string v1, "adb"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/adb/AdbService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 72
    return-void
.end method
