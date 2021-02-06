.class Lcom/android/server/camera/CameraServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/camera/CameraServiceProxy;

    .line 151
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 157
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_3
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v6

    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v1}, Lcom/android/server/camera/CameraServiceProxy;->access$000(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v2}, Lcom/android/server/camera/CameraServiceProxy;->access$100(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_3

    monitor-exit v1

    return-void

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object v3, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v3}, Lcom/android/server/camera/CameraServiceProxy;->access$200(Lcom/android/server/camera/CameraServiceProxy;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/camera/CameraServiceProxy;->access$300(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 167
    monitor-exit v1

    .line 168
    nop

    .line 173
    :goto_1
    return-void

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x7ad942ef -> :sswitch_4
        -0x16fbb1bb -> :sswitch_3
        -0xc02da2e -> :sswitch_2
        0x3eac4465 -> :sswitch_1
        0x42dd01f1 -> :sswitch_0
    .end sparse-switch
.end method
