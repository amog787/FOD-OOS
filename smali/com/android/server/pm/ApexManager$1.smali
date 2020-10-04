.class Lcom/android/server/pm/ApexManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ApexManager;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ApexManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ApexManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ApexManager;

    .line 106
    iput-object p1, p0, Lcom/android/server/pm/ApexManager$1;->this$0:Lcom/android/server/pm/ApexManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$1;->this$0:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->onBootCompleted()V

    .line 110
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$1;->this$0:Lcom/android/server/pm/ApexManager;

    invoke-static {v0}, Lcom/android/server/pm/ApexManager;->access$000(Lcom/android/server/pm/ApexManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    return-void
.end method
