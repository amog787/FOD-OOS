.class Lcom/android/server/CachedDeviceStateService$1;
.super Landroid/content/BroadcastReceiver;
.source "CachedDeviceStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CachedDeviceStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/CachedDeviceStateService;


# direct methods
.method constructor <init>(Lcom/android/server/CachedDeviceStateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/CachedDeviceStateService;

    .line 40
    iput-object p1, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ed8ea7f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, -0x5bb23923

    if-eq v1, v2, :cond_2

    const v2, -0x56ac2893

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v3, :cond_4

    goto :goto_2

    .line 54
    :cond_4
    iget-object v0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {v0}, Lcom/android/server/CachedDeviceStateService;->access$000(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    goto :goto_2

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {v0}, Lcom/android/server/CachedDeviceStateService;->access$000(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/internal/os/CachedDeviceState;->setScreenInteractive(Z)V

    .line 52
    goto :goto_2

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/android/server/CachedDeviceStateService$1;->this$0:Lcom/android/server/CachedDeviceStateService;

    invoke-static {v0}, Lcom/android/server/CachedDeviceStateService;->access$000(Lcom/android/server/CachedDeviceStateService;)Lcom/android/internal/os/CachedDeviceState;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v4, v5

    .line 45
    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/internal/os/CachedDeviceState;->setCharging(Z)V

    .line 49
    nop

    .line 57
    :goto_2
    return-void
.end method
