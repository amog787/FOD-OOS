.class final Lcom/android/server/adb/AdbService$AdbHandler;
.super Landroid/os/Handler;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdbHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/adb/AdbService;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbService;Landroid/os/Looper;)V
    .locals 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 112
    iput-object p1, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    .line 113
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    :try_start_0
    const-string/jumbo v0, "persist.sys.usb.config"

    const-string v1, ""

    .line 120
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adb"

    .line 119
    invoke-direct {p0, v0, v1}, Lcom/android/server/adb/AdbService$AdbHandler;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/adb/AdbService;->access$202(Lcom/android/server/adb/AdbService;Z)Z

    .line 124
    invoke-static {p1}, Lcom/android/server/adb/AdbService;->access$400(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    .line 125
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/adb/AdbService$AdbSettingsObserver;

    invoke-direct {v3, p1}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;-><init>(Lcom/android/server/adb/AdbService;)V

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception p1

    .line 128
    .local p1, "e":Ljava/lang/Exception;
    const-string v0, "AdbService"

    const-string v1, "Error initializing AdbHandler"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local p1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .line 133
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 135
    :cond_0
    const/16 v2, 0x2c

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_1

    return v1

    .line 136
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 137
    .local v3, "charAfter":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_2

    return v1

    .line 138
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 150
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$300(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v0}, Lcom/android/server/adb/AdbService;->access$300(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    invoke-static {v1}, Lcom/android/server/adb/AdbService;->access$200(Lcom/android/server/adb/AdbService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(Z)V

    goto :goto_1

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/server/adb/AdbService$AdbHandler;->this$0:Lcom/android/server/adb/AdbService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/adb/AdbService;->access$500(Lcom/android/server/adb/AdbService;Z)V

    .line 153
    nop

    .line 160
    :cond_3
    :goto_1
    return-void
.end method

.method public sendMessage(IZ)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "arg"    # Z

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbService$AdbHandler;->removeMessages(I)V

    .line 143
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/server/adb/AdbService$AdbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method
