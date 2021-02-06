.class final Lcom/android/server/input/InputManagerService$InputMonitorHost;
.super Landroid/view/IInputMonitorHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputMonitorHost"
.end annotation


# instance fields
.field private final mInputChannel:Landroid/view/InputChannel;

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)V
    .locals 0
    .param p2, "channel"    # Landroid/view/InputChannel;

    .line 2354
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputMonitorHost$Stub;-><init>()V

    .line 2355
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannel:Landroid/view/InputChannel;

    .line 2356
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 2365
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$1600(JLandroid/view/InputChannel;)V

    .line 2366
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2367
    return-void
.end method

.method public pilferPointers()V
    .locals 3

    .line 2360
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$1500(JLandroid/os/IBinder;)V

    .line 2361
    return-void
.end method
