.class Lcom/android/server/usage/UsageStatsService$2;
.super Ljava/lang/Object;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UsageStatsService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usage/UsageStatsService;

    .line 202
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLimitReached(IIJJLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "observerId"    # I
    .param p2, "userId"    # I
    .param p3, "timeLimit"    # J
    .param p5, "timeElapsed"    # J
    .param p7, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 206
    if-nez p7, :cond_0

    return-void

    .line 207
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.usage.extra.OBSERVER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string v1, "android.app.usage.extra.TIME_LIMIT"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    const-string v1, "android.app.usage.extra.TIME_USED"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p7, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t deliver callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method public onSessionEnd(IIJLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "observerId"    # I
    .param p2, "userId"    # I
    .param p3, "timeElapsed"    # J
    .param p5, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 222
    if-nez p5, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.usage.extra.OBSERVER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v1, "android.app.usage.extra.TIME_USED"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p5, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t deliver callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UsageStatsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method
