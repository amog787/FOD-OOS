.class Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
.super Ljava/lang/Object;
.source "RulesManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallRunnable"
.end annotation


# instance fields
.field private final mCallback:Landroid/app/timezone/ICallback;

.field private final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field private final mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .locals 0
    .param p2, "distroParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "checkToken"    # Lcom/android/server/timezone/CheckToken;
    .param p4, "callback"    # Landroid/app/timezone/ICallback;

    .line 263
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 265
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 266
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    .line 267
    return-void
.end method

.method private mapInstallerResultToApiCode(I)I
    .locals 3
    .param p1, "installerResult"    # I

    .line 315
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    .line 327
    return v1

    .line 325
    :cond_0
    const/4 v0, 0x5

    return v0

    .line 321
    :cond_1
    return v0

    .line 323
    :cond_2
    return v2

    .line 319
    :cond_3
    return v0

    .line 317
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private sendInstallNotificationIntentIfRequired(I)V
    .locals 1
    .param p1, "installerResult"    # I

    .line 309
    if-nez p1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$600(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    .line 312
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 271
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneInstallStarted(Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    .line 276
    .local v0, "success":Z
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 279
    .local v2, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 280
    .local v3, "isFdOwner":Z
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 282
    .local v4, "is":Ljava/io/InputStream;
    new-instance v5, Lcom/android/timezone/distro/TimeZoneDistro;

    invoke-direct {v5, v4}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 283
    .local v5, "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    iget-object v6, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v6}, Lcom/android/server/timezone/RulesManagerService;->access$200(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I

    move-result v6

    .line 286
    .local v6, "installerResult":I
    invoke-direct {p0, v6}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->sendInstallNotificationIntentIfRequired(I)V

    .line 288
    invoke-direct {p0, v6}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mapInstallerResultToApiCode(I)I

    move-result v7

    .line 289
    .local v7, "resultCode":I
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v8}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 290
    iget-object v8, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v9, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v8, v9, v7}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    const/4 v0, 0x1

    .line 295
    .end local v3    # "isFdOwner":Z
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "distro":Lcom/android/timezone/distro/TimeZoneDistro;
    .end local v6    # "installerResult":I
    .end local v7    # "resultCode":I
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    .line 276
    :catchall_0
    move-exception v3

    .end local v0    # "success":Z
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local p0    # "this":Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    .restart local v0    # "success":Z
    .restart local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local p0    # "this":Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
    :cond_0
    :goto_0
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 302
    .end local v2    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
    :catchall_3
    move-exception v2

    goto :goto_2

    .line 295
    :catch_0
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v3, "timezone.RulesManagerService"

    const-string v4, "Failed to install distro."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 298
    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$100(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 297
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 299
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v3, v5, v4}, Lcom/android/server/timezone/RulesManagerService;->access$300(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 302
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 304
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 305
    nop

    .line 306
    return-void

    .line 302
    :goto_2
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$400(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 304
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->access$500(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
