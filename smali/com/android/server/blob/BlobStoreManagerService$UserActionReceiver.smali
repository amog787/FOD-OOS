.class Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1392
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/blob/BlobStoreManagerService;
    .param p2, "x1"    # Lcom/android/server/blob/BlobStoreManagerService$1;

    .line 1392
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1395
    sget-boolean v0, Lcom/android/server/blob/BlobStoreConfig;->LOGV:Z

    const-string v1, "BlobStore"

    if-eqz v0, :cond_0

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ad942ef    # -7.8400085E-36f

    if-eq v3, v4, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unknown intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1400
    :cond_3
    const-string v0, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1402
    .local v0, "userId":I
    if-ne v0, v2, :cond_4

    .line 1403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId is missing in the intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    return-void

    .line 1406
    :cond_4
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$UserActionReceiver;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0}, Lcom/android/server/blob/BlobStoreManagerService;->access$1000(Lcom/android/server/blob/BlobStoreManagerService;I)V

    .line 1407
    nop

    .line 1411
    .end local v0    # "userId":I
    :goto_1
    return-void
.end method
