.class Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;
.super Ljava/lang/Object;
.source "EmbeddedWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/EmbeddedWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmbeddedWindow"
.end annotation


# instance fields
.field final mClient:Landroid/view/IWindow;

.field final mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field final mHostWindowState:Lcom/android/server/wm/WindowState;

.field mInputChannel:Landroid/view/InputChannel;

.field final mOwnerPid:I

.field final mOwnerUid:I

.field final mWindowType:I

.field final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindow;Lcom/android/server/wm/WindowState;III)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "clientToken"    # Landroid/view/IWindow;
    .param p3, "hostWindowState"    # Lcom/android/server/wm/WindowState;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "windowType"    # I

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 152
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mClient:Landroid/view/IWindow;

    .line 153
    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    .line 154
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    .line 155
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 156
    iput p4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    .line 157
    iput p5, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerPid:I

    .line 158
    iput p6, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWindowType:I

    .line 159
    return-void
.end method


# virtual methods
.method getApplicationHandle()Landroid/view/InputApplicationHandle;
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, v1, Landroid/view/InputWindowHandle;->inputApplicationHandle:Landroid/view/InputApplicationHandle;

    invoke-direct {v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/view/InputApplicationHandle;)V

    return-object v0

    .line 171
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mHostWindowState:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Internal"

    .line 164
    .local v0, "hostWindowName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmbeddedWindow{ u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method onRemoved()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 199
    :cond_0
    return-void
.end method

.method openInputChannel()Landroid/view/InputChannel;
    .locals 5

    .line 178
    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getName()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 181
    .local v1, "inputChannels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    .line 182
    const/4 v2, 0x1

    aget-object v2, v1, v2

    .line 183
    .local v2, "clientChannel":Landroid/view/InputChannel;
    iget-object v3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v3, v4}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;)V

    .line 185
    iget-object v3, p0, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 190
    return-object v2

    .line 186
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Client and Server tokens are expected tobe the same"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
