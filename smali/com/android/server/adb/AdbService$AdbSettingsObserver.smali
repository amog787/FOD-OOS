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
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    .line 165
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 170
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$400(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    .line 172
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v1}, Lcom/android/server/adb/AdbService;->access$600(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbService$AdbHandler;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/adb/AdbService$AdbHandler;->sendMessage(IZ)V

    .line 173
    return-void
.end method
