.class final Lcom/android/server/input/InputManagerService$LocalService;
.super Landroid/hardware/input/InputManagerInternal;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 2338
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/hardware/input/InputManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "x1"    # Lcom/android/server/input/InputManagerService$1;

    .line 2338
    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$LocalService;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .line 2346
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/input/InputManagerService;->access$1600(Lcom/android/server/input/InputManagerService;Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method public setDisplayViewports(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayViewport;",
            ">;)V"
        }
    .end annotation

    .line 2341
    .local p1, "viewports":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayViewport;>;"
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0, p1}, Lcom/android/server/input/InputManagerService;->access$1500(Lcom/android/server/input/InputManagerService;Ljava/util/List;)V

    .line 2342
    return-void
.end method

.method public setInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .line 2351
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$1700(JZ)V

    .line 2352
    return-void
.end method

.method public setPulseGestureEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 2361
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2362
    const/4 v0, 0x0

    .line 2364
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v2}, Lcom/android/server/input/InputManagerService;->access$1900(Lcom/android/server/input/InputManagerService;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 2365
    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2369
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2366
    :catch_0
    move-exception v1

    .line 2367
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "InputManager"

    const-string v3, "Unable to setPulseGestureEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2369
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2370
    goto :goto_3

    .line 2369
    :goto_2
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1

    .line 2372
    .end local v0    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_3
    return-void
.end method

.method public toggleCapsLock(I)V
    .locals 2
    .param p1, "deviceId"    # I

    .line 2356
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/server/input/InputManagerService;->access$1800(JI)V

    .line 2357
    return-void
.end method
