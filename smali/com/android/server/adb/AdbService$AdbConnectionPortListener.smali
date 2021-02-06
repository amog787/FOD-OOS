.class Lcom/android/server/adb/AdbService$AdbConnectionPortListener;
.super Ljava/lang/Object;
.source "AdbService.java"

# interfaces
.implements Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbConnectionPortListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/adb/AdbService;

    .line 408
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPortReceived(I)V
    .locals 3
    .param p1, "port"    # I

    .line 410
    if-lez p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object v0, v0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object v0, v0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 416
    :try_start_0
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$600(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_wifi_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_0

    .line 418
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "AdbService"

    const-string v2, "ADB_ENABLED is restricted."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;->this$0:Lcom/android/server/adb/AdbService;

    iget-object v1, v0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbService;->access$900(Lcom/android/server/adb/AdbService;I)V

    .line 425
    return-void
.end method
