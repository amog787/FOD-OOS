.class Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;
.super Landroid/debug/AdbManagerInternal;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method private constructor <init>(Lcom/android/server/adb/AdbService;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-direct {p0}, Landroid/debug/AdbManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/adb/AdbService;Lcom/android/server/adb/AdbService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/adb/AdbService;
    .param p2, "x1"    # Lcom/android/server/adb/AdbService$1;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;)V

    return-void
.end method


# virtual methods
.method public getAdbKeysFile()Ljava/io/File;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$300(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getAdbTempKeysFile()Ljava/io/File;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$300(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public isAdbEnabled()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$200(Lcom/android/server/adb/AdbService;)Z

    move-result v0

    return v0
.end method

.method public registerTransport(Landroid/debug/IAdbTransport;)V
    .locals 2
    .param p1, "transport"    # Landroid/debug/IAdbTransport;

    .line 87
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$100(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method public unregisterTransport(Landroid/debug/IAdbTransport;)V
    .locals 2
    .param p1, "transport"    # Landroid/debug/IAdbTransport;

    .line 92
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$100(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-interface {p1}, Landroid/debug/IAdbTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method
