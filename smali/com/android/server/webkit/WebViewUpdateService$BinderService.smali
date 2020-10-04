.class Lcom/android/server/webkit/WebViewUpdateService$BinderService;
.super Landroid/webkit/IWebViewUpdateService$Stub;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/webkit/IWebViewUpdateService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/webkit/WebViewUpdateService;
    .param p2, "x1"    # Lcom/android/server/webkit/WebViewUpdateService$1;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "newProvider"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 215
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return-object v2

    .line 218
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 205
    .end local v0    # "callingId":J
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: changeProviderAndSetting() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WebViewUpdateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WebViewUpdateService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->dumpState(Ljava/io/PrintWriter;)V

    .line 273
    return-void
.end method

.method public enableMultiProcess(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 250
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->enableMultiProcess(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 266
    nop

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 253
    .end local v0    # "callingId":J
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: enableMultiProcess() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WebViewUpdateService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 235
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public isMultiProcessEnabled()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isMultiProcessEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyRelroCreationCompleted()V
    .locals 3

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x40d

    if-eq v0, v1, :cond_0

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 169
    return-void

    .line 172
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 174
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->notifyRelroCreationCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    nop

    .line 178
    return-void

    .line 176
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 152
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;-><init>(Landroid/webkit/IWebViewUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 154
    return-void
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 2

    .line 190
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->access$100(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot create a WebView from the SystemServer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
