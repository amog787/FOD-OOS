.class final Lcom/android/server/autofill/ui/InlineContentProviderImpl;
.super Lcom/android/internal/view/inline/IInlineContentProvider$Stub;
.source "InlineContentProviderImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mProvideContentCalled:Z

.field private mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

.field private final mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V
    .locals 1
    .param p1, "remoteInlineSuggestionViewConnector"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
    .param p2, "remoteInlineSuggestionUi"    # Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 70
    invoke-direct {p0}, Lcom/android/internal/view/inline/IInlineContentProvider$Stub;-><init>()V

    .line 59
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 71
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    .line 72
    iput-object p2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 73
    return-void
.end method

.method private handleGetSurfacePackage()V
    .locals 2

    .line 124
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleGetSurfacePackage"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    if-nez v0, :cond_1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->requestSurfacePackage()V

    .line 130
    return-void

    .line 127
    :cond_2
    :goto_0
    return-void
.end method

.method private handleOnSurfacePackageReleased()V
    .locals 2

    .line 133
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleOnSurfacePackageReleased"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    if-nez v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->surfacePackageReleased()V

    .line 139
    return-void

    .line 136
    :cond_2
    :goto_0
    return-void
.end method

.method private handleProvideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callback"    # Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 108
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->TAG:Ljava/lang/String;

    const-string v1, "handleProvideContent"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    if-eqz v0, :cond_1

    .line 111
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mProvideContentCalled:Z

    .line 114
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->match(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    :cond_2
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;IILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->setInlineContentCallback(Lcom/android/internal/view/inline/IInlineContentCallback;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->requestSurfacePackage()V

    .line 121
    return-void
.end method

.method public static synthetic lambda$AOo0mjndosCde0qHPXTOWkTplRk(Lcom/android/server/autofill/ui/InlineContentProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->handleOnSurfacePackageReleased()V

    return-void
.end method

.method public static synthetic lambda$YlJzGVDaLSN0r4YiqXhcOCsPuso(Lcom/android/server/autofill/ui/InlineContentProviderImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->handleGetSurfacePackage()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/server/autofill/ui/InlineContentProviderImpl;
    .locals 3

    .line 83
    new-instance v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    iget-object v1, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mRemoteInlineSuggestionUi:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-direct {v0, v1, v2}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-object v0
.end method

.method public synthetic lambda$provideContent$0$InlineContentProviderImpl(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callback"    # Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->handleProvideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V

    return-void
.end method

.method public onSurfacePackageReleased()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$AOo0mjndosCde0qHPXTOWkTplRk;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$AOo0mjndosCde0qHPXTOWkTplRk;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callback"    # Lcom/android/internal/view/inline/IInlineContentCallback;

    .line 94
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$MO0MULXauDTPFsfz8mq3vmRWpKs;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;IILcom/android/internal/view/inline/IInlineContentCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method

.method public requestSurfacePackage()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$YlJzGVDaLSN0r4YiqXhcOCsPuso;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/-$$Lambda$InlineContentProviderImpl$YlJzGVDaLSN0r4YiqXhcOCsPuso;-><init>(Lcom/android/server/autofill/ui/InlineContentProviderImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    return-void
.end method
