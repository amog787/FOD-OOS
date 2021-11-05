.class Lcom/android/server/power/batterysaver/BatterySaverPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 247
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x66d7cdf7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x378aca07

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.app.action.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "android.app.action.EXIT_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setCarModeEnabled(Z)V

    goto :goto_2

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    invoke-virtual {v0, v4}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->setCarModeEnabled(Z)V

    .line 253
    nop

    .line 258
    :goto_2
    return-void
.end method
