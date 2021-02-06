.class Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p2, "x1"    # Lcom/android/server/blob/BlobStoreManagerService$1;

    .line 1365
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1368
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    const-string v1, "BlobStore"

    if-eqz v0, :cond_0

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xff13fb5

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v3, :cond_3

    const v3, 0x5e33a4ad

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    :goto_0
    move v0, v5

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_4

    .line 1387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1374
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1375
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_5

    .line 1376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name is missing in the intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    return-void

    .line 1379
    :cond_5
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1380
    .local v2, "uid":I
    if-ne v2, v5, :cond_6

    .line 1381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uid is missing in the intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return-void

    .line 1384
    :cond_6
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$PackageChangedReceiver;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/blob/BlobStoreManagerService;->handlePackageRemoved(Ljava/lang/String;I)V

    .line 1385
    nop

    .line 1389
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "uid":I
    :goto_2
    return-void
.end method
