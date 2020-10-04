.class Lcom/android/server/wm/DisplayRotation$3;
.super Ljava/lang/Thread;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayRotation;

    .line 232
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    new-instance v1, Lcom/android/server/wm/DisplayRotation$3$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayRotation$3$1;-><init>(Lcom/android/server/wm/DisplayRotation$3;)V

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayRotation;->access$002(Lcom/android/server/wm/DisplayRotation;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->access$000(Lcom/android/server/wm/DisplayRotation;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 279
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 282
    return-void
.end method
