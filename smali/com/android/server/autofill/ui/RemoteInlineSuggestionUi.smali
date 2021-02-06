.class final Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;
.super Ljava/lang/Object;
.source "RemoteInlineSuggestionUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;
    }
.end annotation


# static fields
.field private static final RELEASE_REMOTE_VIEW_HOST_DELAY_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActualHeight:I

.field private mActualWidth:I

.field private mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeight:I

.field private mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

.field private mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

.field private final mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

.field private mRefCount:I

.field private final mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

.field private mWaitingForUiCreation:Z

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;IILandroid/os/Handler;)V
    .locals 2
    .param p1, "remoteInlineSuggestionViewConnector"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    .line 83
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    .line 93
    iput-object p4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    .line 94
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 95
    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    .line 96
    iput p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    .line 97
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 49
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;
    .param p1, "x1"    # Landroid/service/autofill/IInlineSuggestionUi;
    .param p2, "x2"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleInlineSuggestionUiReady(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 49
    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnLongClick()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 49
    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnClick()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 49
    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 49
    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)Lcom/android/internal/view/inline/IInlineContentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 49
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/content/IntentSender;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;
    .param p1, "x1"    # Landroid/content/IntentSender;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnStartIntentSender(Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Landroid/os/IBinder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 49
    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleOnError()V

    return-void
.end method

.method private cancelPendingReleaseViewRequest()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

    .line 200
    :cond_0
    return-void
.end method

.method private handleInlineSuggestionUiReady(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 3
    .param p1, "content"    # Landroid/service/autofill/IInlineSuggestionUi;
    .param p2, "surfacePackage"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 207
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    .line 209
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    .line 210
    iput p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    .line 211
    iput p4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    .line 212
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz v0, :cond_1

    .line 214
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v1, "Sending new UI content to IME"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    .line 216
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    iget v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mActualHeight:I

    invoke-interface {v0, p2, v1, v2}, Lcom/android/internal/view/inline/IInlineContentCallback;->onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling onContent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost$SurfacePackage;->release()V

    .line 224
    :cond_2
    return-void
.end method

.method private handleOnClick()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->onClick()V

    .line 231
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz v0, :cond_0

    .line 233
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentCallback;->onClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling onClick"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private handleOnError()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->onError()V

    .line 253
    return-void
.end method

.method private handleOnLongClick()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/view/inline/IInlineContentCallback;->onLongClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling onLongClick"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private handleOnStartIntentSender(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 261
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0, p1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->onStartIntentSender(Landroid/content/IntentSender;)V

    .line 262
    return-void
.end method

.method private handleOnTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    .locals 1
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 256
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V

    .line 258
    return-void
.end method

.method private handleRequestSurfacePackage()V
    .locals 4

    .line 135
    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->cancelPendingReleaseViewRequest()V

    .line 137
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    if-nez v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    if-eqz v0, :cond_0

    .line 146
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v1, "Inline suggestion ui is not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->renderSuggestion(IILandroid/service/autofill/IInlineSuggestionUiCallback;)Z

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    goto :goto_0

    .line 154
    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-interface {v0, v1}, Landroid/service/autofill/IInlineSuggestionUi;->getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException calling getSurfacePackage."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method private handleUpdateRefCount(I)V
    .locals 4
    .param p1, "delta"    # I

    .line 176
    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->cancelPendingReleaseViewRequest()V

    .line 177
    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRefCount:I

    .line 178
    if-gtz v0, :cond_0

    .line 179
    new-instance v0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$KMo6hTINel081e-zSnvvpMPORpI;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$KMo6hTINel081e-zSnvvpMPORpI;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

    .line 191
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_0
    return-void
.end method

.method public static synthetic lambda$lxkdyqGc8deEw691WdWG3VTVrvI(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleRequestSurfacePackage()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$handleUpdateRefCount$2$RemoteInlineSuggestionUi()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 182
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releasing the host"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    invoke-interface {v0}, Landroid/service/autofill/IInlineSuggestionUi;->releaseSurfaceControlViewHost()V

    .line 184
    iput-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException calling releaseSurfaceControlViewHost"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Ljava/lang/Runnable;

    .line 190
    return-void
.end method

.method public synthetic lambda$setInlineContentCallback$0$RemoteInlineSuggestionUi(Lcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 0
    .param p1, "inlineContentCallback"    # Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 107
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 108
    return-void
.end method

.method public synthetic lambda$surfacePackageReleased$1$RemoteInlineSuggestionUi()V
    .locals 1

    .line 124
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    return-void
.end method

.method match(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 131
    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method requestSurfacePackage()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$lxkdyqGc8deEw691WdWG3VTVrvI;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$lxkdyqGc8deEw691WdWG3VTVrvI;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method setInlineContentCallback(Lcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 2
    .param p1, "inlineContentCallback"    # Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 106
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$0_JeOqFYsoiyQ8r1ioPO8CPyqyU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$0_JeOqFYsoiyQ8r1ioPO8CPyqyU;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/internal/view/inline/IInlineContentCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method

.method surfacePackageReleased()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$PxoYnRr2ZWbgSy1sKaN-0GD_Mag;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$PxoYnRr2ZWbgSy1sKaN-0GD_Mag;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method
