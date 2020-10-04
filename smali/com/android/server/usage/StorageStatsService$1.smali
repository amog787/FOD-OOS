.class Lcom/android/server/usage/StorageStatsService$1;
.super Landroid/os/storage/StorageEventListener;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/StorageStatsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/StorageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/StorageStatsService;

    .line 119
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 122
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    if-ne p3, v1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$1;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->access$000(Lcom/android/server/usage/StorageStatsService;)V

    .line 130
    :cond_1
    :goto_0
    return-void
.end method
