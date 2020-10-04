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

    .line 2178
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputMonitorHost$Stub;-><init>()V

    .line 2179
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannel:Landroid/view/InputChannel;

    .line 2180
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 2189
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$1200(JLandroid/view/InputChannel;)V

    .line 2190
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2191
    return-void
.end method

.method public pilferPointers()V
    .locals 3

    .line 2184
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$InputMonitorHost;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$1100(JLandroid/os/IBinder;)V

    .line 2185
    return-void
.end method
