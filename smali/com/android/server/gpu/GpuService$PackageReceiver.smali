.class final Lcom/android/server/gpu/GpuService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gpu/GpuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method private constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/gpu/GpuService;Lcom/android/server/gpu/GpuService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/gpu/GpuService;
    .param p2, "x1"    # Lcom/android/server/gpu/GpuService$1;

    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 173
    .local v0, "data":Landroid/net/Uri;
    nop

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v2}, Lcom/android/server/gpu/GpuService;->access$700(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 179
    .local v2, "isProdDriver":Z
    iget-object v3, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v3}, Lcom/android/server/gpu/GpuService;->access$800(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 180
    .local v3, "isDevDriver":Z
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0xa480416

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v7, :cond_4

    const v7, 0x1f50b9c2

    if-eq v6, v7, :cond_3

    const v7, 0x5c1076e2

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v8

    goto :goto_0

    :cond_4
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v9

    :goto_0
    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_5

    goto :goto_1

    .line 188
    :cond_5
    if-eqz v2, :cond_6

    .line 189
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->access$900(Lcom/android/server/gpu/GpuService;)V

    .line 190
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->access$300(Lcom/android/server/gpu/GpuService;)V

    goto :goto_1

    .line 191
    :cond_6
    if-eqz v3, :cond_7

    .line 192
    iget-object v4, p0, Lcom/android/server/gpu/GpuService$PackageReceiver;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v4}, Lcom/android/server/gpu/GpuService;->access$1000(Lcom/android/server/gpu/GpuService;)V

    .line 199
    :cond_7
    :goto_1
    return-void
.end method
