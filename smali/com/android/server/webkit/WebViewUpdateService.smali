.class public Lcom/android/server/webkit/WebViewUpdateService;
.super Lcom/android/server/SystemService;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/webkit/WebViewUpdateService$BinderService;
    }
.end annotation


# static fields
.field static final PACKAGE_ADDED:I = 0x1

.field static final PACKAGE_ADDED_REPLACED:I = 0x2

.field static final PACKAGE_CHANGED:I = 0x0

.field static final PACKAGE_REMOVED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WebViewUpdateService"


# instance fields
.field private mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

.field private mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-static {}, Lcom/android/server/webkit/SystemImpl;->getInstance()Lcom/android/server/webkit/SystemImpl;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    .line 62
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .line 47
    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->packageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .line 47
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    return-object v0
.end method

.method public static entirePackageChanged(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .line 140
    nop

    .line 141
    const-string v0, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "componentList":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "package:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static packageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 131
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "package:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 8

    .line 66
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateService$1;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateService$1;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    iput-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 111
    .local v5, "provider":Landroid/webkit/WebViewProviderInfo;
    iget-object v6, v5, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 110
    .end local v5    # "provider":Landroid/webkit/WebViewProviderInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v1, "userAddedFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService;->mWebViewUpdatedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 123
    new-instance v2, Lcom/android/server/webkit/WebViewUpdateService$BinderService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$1;)V

    const/4 v3, 0x1

    const-string/jumbo v4, "webviewupdate"

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/webkit/WebViewUpdateService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 124
    return-void
.end method

.method public prepareWebViewInSystemServer()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService;->mImpl:Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->prepareWebViewInSystemServer()V

    .line 128
    return-void
.end method
