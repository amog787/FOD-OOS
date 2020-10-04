.class Lcom/android/server/display/WifiDisplayAdapter$1;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->registerLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;

    .line 136
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    new-instance v1, Lcom/android/server/display/WifiDisplayController;

    .line 140
    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/WifiDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayAdapter;->access$100(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/WifiDisplayController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V

    .line 139
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$002(Lcom/android/server/display/WifiDisplayAdapter;Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController;

    .line 142
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$200(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.server.display.wfd.DISCONNECT"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$1;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 143
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$300(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;

    move-result-object v6

    .line 142
    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 144
    return-void
.end method
