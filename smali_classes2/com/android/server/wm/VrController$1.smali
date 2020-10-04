.class Lcom/android/server/wm/VrController$1;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "VrController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/VrController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/VrController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/VrController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/VrController;

    .line 112
    iput-object p1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {v0}, Lcom/android/server/wm/VrController;->access$000(Lcom/android/server/wm/VrController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 118
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    const/4 v4, 0x3

    invoke-static {v3, v2, v4, v1}, Lcom/android/server/wm/VrController;->access$100(Lcom/android/server/wm/VrController;IIZ)I

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/wm/VrController;->access$276(Lcom/android/server/wm/VrController;I)I

    goto :goto_0

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    invoke-static {v3, v2, v1}, Lcom/android/server/wm/VrController;->access$300(Lcom/android/server/wm/VrController;IZ)I

    .line 123
    iget-object v1, p0, Lcom/android/server/wm/VrController$1;->this$0:Lcom/android/server/wm/VrController;

    const/4 v2, -0x3

    invoke-static {v1, v2}, Lcom/android/server/wm/VrController;->access$272(Lcom/android/server/wm/VrController;I)I

    .line 125
    :goto_0
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
