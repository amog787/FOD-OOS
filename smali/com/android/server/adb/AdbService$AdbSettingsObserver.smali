.class Lcom/android/server/adb/AdbService$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field private final mAdbUsbUri:Landroid/net/Uri;

.field private final mAdbWifiUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 201
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 197
    const-string p1, "adb_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    .line 198
    const-string p1, "adb_wifi_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    .line 202
    return-void
.end method

.method static synthetic lambda$onChange$0(Ljava/lang/Object;ZB)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # B

    .line 210
    move-object v0, p0

    check-cast v0, Lcom/android/server/adb/AdbService;

    invoke-static {v0, p1, p2}, Lcom/android/server/adb/AdbService;->access$700(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method

.method static synthetic lambda$onChange$1(Ljava/lang/Object;ZB)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # B

    .line 216
    move-object v0, p0

    check-cast v0, Lcom/android/server/adb/AdbService;

    invoke-static {v0, p1, p2}, Lcom/android/server/adb/AdbService;->access$700(Lcom/android/server/adb/AdbService;ZB)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 206
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbUsbUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$600(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "adb_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 209
    .local v0, "shouldEnable":Z
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v3, Lcom/android/server/adb/-$$Lambda$AdbService$AdbSettingsObserver$j80q7vJz3QArWlwXdP3SN7zmf1A;->INSTANCE:Lcom/android/server/adb/-$$Lambda$AdbService$AdbSettingsObserver$j80q7vJz3QArWlwXdP3SN7zmf1A;

    iget-object v4, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 210
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 211
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 209
    invoke-static {v3, v4, v5, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "shouldEnable":Z
    goto :goto_1

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->mAdbWifiUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$600(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "adb_wifi_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    move v2, v1

    :cond_2
    move v0, v2

    .line 215
    .restart local v0    # "shouldEnable":Z
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/android/server/adb/-$$Lambda$AdbService$AdbSettingsObserver$RoyT5Mqx9S17cRYS-VTdgg8I7zc;->INSTANCE:Lcom/android/server/adb/-$$Lambda$AdbService$AdbSettingsObserver$RoyT5Mqx9S17cRYS-VTdgg8I7zc;

    iget-object v4, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 217
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 215
    invoke-static {v3, v4, v5, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 212
    .end local v0    # "shouldEnable":Z
    :cond_3
    :goto_1
    nop

    .line 219
    :goto_2
    return-void
.end method
