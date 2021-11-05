.class public Lcom/android/server/usage/StorageStatsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/StorageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 108
    new-instance v0, Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/usage/StorageStatsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService$Lifecycle;->mService:Lcom/android/server/usage/StorageStatsService;

    .line 109
    const-string v1, "storagestats"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usage/StorageStatsService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 110
    return-void
.end method
