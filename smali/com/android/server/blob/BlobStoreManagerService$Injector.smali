.class Lcom/android/server/blob/BlobStoreManagerService$Injector;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    .line 1912
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public initializeMessageHandler()Landroid/os/Handler;
    .locals 1

    .line 1908
    invoke-static {}, Lcom/android/server/blob/BlobStoreManagerService;->access$3200()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
